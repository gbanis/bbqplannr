class CreateAllergyassociations < ActiveRecord::Migration
  def change
    create_table :allergyassociations do |t|
      t.belongs_to :allergy, index: true
      t.belongs_to :rsvp, index: true
    end
  end
end
