class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true

  # A review’s rating must be a number between 0 and 5.
  # validates :rating, :inclusion => { :in => 0..5 }
  # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
  # validates :rating, :numericality => { :only_integer => true, :message => " should be a number" }
  validates :rating, numericality: { only_integer: true, in: (0..5) }
end
