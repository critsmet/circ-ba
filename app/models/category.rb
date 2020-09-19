class Category < ApplicationRecord
  has_many :categories_events
  has_many :events, through: :categories_events
end
