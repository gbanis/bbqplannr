class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name,
      t.text, :location
      t.datetime, :start_time
      t.datetime, :end_time
      t.text, :description
      t.belongs_to :user, index: true
    end
  end
end
