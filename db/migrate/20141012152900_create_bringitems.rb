class CreateBringitems < ActiveRecord::Migration
  def change
    create_table :bringitems do |t|
      t.string :name
    end
  end
end
