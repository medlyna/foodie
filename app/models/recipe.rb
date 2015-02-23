class Recipe < ActiveRecord::
	belongs_to :user
	belongs_to :meals
	has_many :ingredients

	validates_uniqueness_of :user_id, :recipe_name, :image, :source_url
end
