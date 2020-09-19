class Presence < ApplicationRecord
  belongs_to :entity
  belongs_to :event

  enum presence_type: { venue: 'venue', organizer: 'organizer', attendee: 'attendee'}

  scope :as_attendee, -> { where(presence_type: 'attendee') }
  scope :as_organizer, -> { where(presence_type: 'organizer') }
  scope :as_venue, -> { where(presence_type: 'venue') }

end
