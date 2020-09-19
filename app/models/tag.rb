class Tag < ApplicationRecord
  has_many :events_tags, dependent: :destroy
  has_many :events, through: :events_tags
end
