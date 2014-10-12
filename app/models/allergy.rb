class Allergy < ActiveRecord::Base
  has_many :allergyassociations
  has_many :rsvps, through: :allergyassociations
end
