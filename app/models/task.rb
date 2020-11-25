class Task < ApplicationRecord
  belongs_to :contact

  validates :contact_name, :task_date, presence: true
end
