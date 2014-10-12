class CreateMealassociations < ActiveRecord::Migration
  def change
    create_table :mealassociations do |t|
      t.belongs_to :meal, index: true
      t.belongs_to :rsvp, index: true
    end
  end
end
