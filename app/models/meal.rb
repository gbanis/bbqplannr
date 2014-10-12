class Meal < ActiveRecord::Base
  has_many :mealassociations
  has_many :rsvps, through: :mealassociations
end
