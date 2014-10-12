class CreateBringitems < ActiveRecord::Migration
  def change
    create_table :bringitems do |t|
      t.string :name
      t.belongs_to :event, index: true
    end
  end
end
