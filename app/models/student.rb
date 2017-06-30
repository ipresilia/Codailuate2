class Student < ApplicationRecord
  belongs_to :batch
  has_and_belongs_to_many :evaluations

  validates :full_name, presence: true, length: { maximum: 50 }
  validates :photo, presence: true, length: { maximum: 150 }
  validates :last_evaluation, presence: true
end
