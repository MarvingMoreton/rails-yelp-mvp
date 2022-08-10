class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]

  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
  has_many :reviews, dependent: :destroy
  # A restaurant must have a name, an address and a category.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: CATEGORIES }
end
