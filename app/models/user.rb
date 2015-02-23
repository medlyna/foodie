class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :recipes
  has_many :favorite_lists
  has_many :meals
  has_many :diet_restrictions
  has_many :ingredients
  has_many :allergens


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
