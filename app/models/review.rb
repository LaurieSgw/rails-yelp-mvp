class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5].freeze
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: RATING, message: "%{value} is not a valid rate" }
  validates :rating, numericality: { only_integer: true }
end
