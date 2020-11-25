class Event < ApplicationRecord
  belongs_to :contact

  validates :name, :event_date, presence: true
end
