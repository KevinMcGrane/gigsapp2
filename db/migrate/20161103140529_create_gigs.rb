class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :artist
      t.integer :venue_id
      t.date :date
      t.string :start_time
      t.integer :tickets_remaining

      t.timestamps null: false
    end
  end
end
