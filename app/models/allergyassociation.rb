class Allergyassociation < ActiveRecord::Base
  belongs_to :rsvp
  belongs_to :allergy
end
