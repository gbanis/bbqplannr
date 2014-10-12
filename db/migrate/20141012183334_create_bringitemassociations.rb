class CreateBringitemassociations < ActiveRecord::Migration
  def change
    create_table :bringitemassociations do |t|
      t.belongs_to :bringitem, index: true
      t.belongs_to :rsvp, index: true
    end
  end
end
