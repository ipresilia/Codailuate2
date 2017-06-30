class Evaluation < ApplicationRecord

  has_and_belongs_to_many :students
  validates :color, presence: true
  validates :date, presence: true
  validates :remark, presence: true

# ALGORITHM GOES HERE
# NOT SURE IF THE FOLLOWING IS CORRECT
  def color
    color = ["red", "yellow", "green"]
  end

  def probability
    probability = [0.50, 0.33, 0.17]
    probability.reduce(:+)
  end

  def loaded_color
    loaded_color = color.zip(probability).to_h
  end

  def weighted_random_sampling
    weighted_random_sampling = -> (freq) { freq.max_by { |_, weight| rand ** (1.0 / weight) }.first }
    3.times.map { weighted_random_sampling[loaded_color] }
  end

end

# IS THE ABOVE EVEN CORRECT? 
