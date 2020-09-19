class Entity < ApplicationRecord
  # has_secure_password

  has_many :organizer_presences, -> {as_organizer}, class_name: 'Presence'
  has_many :organizing_events, source: :event, through: :organizer_presences

  has_many :attending_presences, -> {as_attendee}, class_name: 'Presence'
  has_many :attending_events, source: :event, through: :attending_presences

  has_many :hosting_presences, -> {as_venue}, class_name: 'Presence'
  has_many :hosting_events, source: :event, through: :hosting_presences

  has_many :active_connections, class_name: "Connection", foreign_key: "connecter_id", dependent: :destroy
  has_many :connected, through: :active_connections

  has_many :passive_connections, class_name: "Connection", foreign_key: "connected_id", dependent: :destroy
  has_many :connecters, through: :passive_connections

  # validates :handle, presence: true, uniqueness: true

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  before_create :create_confirmation_token
  after_create :send_email_confirmation_email

  private

  def send_email_confirmation_email
    EntityMailer.with(email: self.email, confirmation_token: self.confirmation_token).email_confirmation.deliver_now
  end

  def create_confirmation_token
    self.confirmation_token = SecureRandom.urlsafe_base64.to_s
  end

end
