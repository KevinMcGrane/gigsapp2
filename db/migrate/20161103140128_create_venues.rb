class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.string :capacity
      t.string :image

      t.timestamps null: false
    end
  end
end
