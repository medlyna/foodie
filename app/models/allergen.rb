class Allergen < ActiveRecord::Base
	belongs_to :user
	has_many :meals
	has_many :recipes
	has_many :ingredients, through: :recipes
end
