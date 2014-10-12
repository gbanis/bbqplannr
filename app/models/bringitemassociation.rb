class Bringitemassociation < ActiveRecord::Base
  belongs_to :rsvp
  belongs_to :bringitem
end
