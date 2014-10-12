class Mealassociation < ActiveRecord::Base
  belongs_to :rsvp
  belongs_to :meal
end
