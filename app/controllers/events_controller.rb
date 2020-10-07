class EventsController < ApplicationController
  def index
    events = Event.find_with_params(params)
    #first we organize the events by date, creating a hash that puts the events with a certain date under that date's key
    date_hash = events.inject({}) do |hash, event|
      date = event.date.strftime("%A, %b %d, %Y")
      hash[date] ? hash[date] << EventSerializer.new(event) : hash[date] = [EventSerializer.new(event)]
      hash
    end
    #then we organize that hash into an array of hashes with keys of date: and events:, which will be easier for the front end to handle
    as_array = date_hash.each_with_object([]) do |(key, value), array|
      array << {date: key, events: value}
    end
    render json: as_array
  end

  def show
    event = Event.find(params[:id])
    render json: EventSerializer.new(event)
  end

  def create
    event = Event.new(event_params)
    if event.save
      entity = event.organizers.first
      if entity.confirmed
        render json: {response: "E-mail already confirmed", status: 201}
      else
        render json: {response: "E-mail confirmation required", status: 201}
      end
    end
  end

  def update
    event = Event.find(params[:id])
    event.assign_attributes(event_params)
    if event.valid?
      event.needs_review = true
      event.save
      render json: {event: EventSerializer.new(event), response: "Changes saved", status: 202}
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :online, :description, :online, :address, :creator_email, tag_names: [], category_ids: [])
  end
end
