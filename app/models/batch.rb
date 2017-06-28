class Batch < ApplicationRecord
  belongs_to :user

  validates :number, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
