class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, numericality: { only_integer: true }
  validates :cocktail, uniqueness: { scope: :ingredient }
end
