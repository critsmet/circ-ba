class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :image_url, :date, :edit_token, :approved, :needs_review

  attribute :categories do |event|
    event.categories.map {|category| {name: category.name, id: category.id}}
  end

  attribute :tags do |event|
    event.tags.map {|tag| {name: tag.name, id: tag.id}}
  end

  attribute :time do |event|
    event.date.localtime.strftime("%H:%M")
  end

  attribute :address do |event|
    written_address = event.address
    if written_address
      written_address
    else
      event.venues.map do |venue|
        venue.name || venue.handle
      end.join(", ")
    end
  end

  attribute :creator_email do |event|
    event.organizers.first.email
  end

  #a location of the event should be visible.
  link :organizers do |event|
    "http://localhost:3000/events/#{event.id}/organizers"
  end
  link :venues do |event|
    "http://localhost:3000/events/#{event.id}/venues"
  end
  link :attendees do |event|
    "http://localhost:3000/events/#{event.id}/attendees"
  end
end
