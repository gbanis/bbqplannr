class Bringitem < ActiveRecord::Base
  has_many :bringitemassociations
  has_many :rsvps, through: :bringitemassociations
end
