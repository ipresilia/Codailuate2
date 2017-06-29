class Student < ApplicationRecord
  belongs_to :batch

  validates :full_name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :photo, presence: true, length: { maximum: 200 }
  validates :last_evaluation, presence: true
end
