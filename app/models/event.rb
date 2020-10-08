class Event < ApplicationRecord
  has_many :presences, dependent: :destroy
  has_many :entities, through: :presences

  has_many :categories_events, dependent: :destroy
  has_many :categories, through: :categories_events

  has_many :events_tags, dependent: :destroy
  has_many :tags, through: :events_tags

  validates_presence_of :name, :date, :description, :address
  validates_inclusion_of :online, in: [true, false]

  geocoded_by :address

  before_create :generate_edit_token
  before_create :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  after_create :send_event_received_email
  #but not if the creator hasn't been approved yet

  after_save :send_event_reviewed_email, if: ->(obj){ obj.approved != nil and obj.saved_change_to_approved? }

  default_scope { order(date: :asc)}
  scope :by_date, lambda {|date| where("date >= ? AND date <= ?", date, date.end_of_day)}
  scope :from_day_on, lambda { |date| where("date >= ?", date)}
  scope :online, ->{where("online = true")}
  scope :approved, -> {where("approved = true")}
  scope :unapproved, -> {where("approved = false")}
  scope :need_review, -> {where("need_review = true")}

  def attendees
    presences.as_attendee.map(&:entity)
  end

  def venues
    presences.as_venue.map(&:entity)
  end

  def organizers
    presences.as_organizer.map(&:entity)
  end

  def tag_names=(array)
    array.each do |name|
      tag = Tag.find_or_create_by(name: name.downcase)
      if !self.tags.include?(tag)
        self.tags << tag
      end
    end
  end

  def generate_edit_token
    self.edit_token = SecureRandom.urlsafe_base64(12).to_s
  end

  def creator_email=(str)
    entity = Entity.find_or_create_by(email: str.downcase)
    presence = Presence.new(entity: entity, presence_type: "organizer")
    self.presences << presence
  end

  def send_event_received_email
    if self.organizers.first && self.organizers.first.confirmed
      EventMailer.with(email: self.organizers.first.email).event_received.deliver_now
    end
  end

  def send_event_reviewed_email
    if self.approved
      EventMailer.with(email: self.organizers.first.email, id: self.id, edit_token: self.edit_token).event_approved.deliver_now
      return
    elsif !self.approved
      EventMailer.with(email: self.organizers.first.email, id: self.id, edit_token: self.edit_token).event_denied.deliver_now
      return
    end
  end

  def send_email_confirmation_email
    EntityMailer.with(email: entity.email, confirmation_token: entity.confirmation_token).email_confirmation.deliver_now
  end

  def self.find_with_params(params)
    if params[:location]
      if params[:location] == "online"
        events = Event.approved.online
      else
        events = Event.approved.near(params[:location])
      end
    else
      events = Event.approved.from_day_on(Date.today)
    end
    if params[:date]
      events = events.from_day_on(Date.parse(params[:date].gsub(" ", "-")))
    end
    if params[:category]
      if params[:category] != "all"
        category = Category.find_by(name: params[:category].downcase)
        events = events.select{|event| event.categories.include?(category)}
      end
    end
    if params[:tag]
      tag = Tag.find_by(id: params[:category])
      events = events.select{|event| event.tags.include?(tag)}
    end
    events.first(20)
  end


end
