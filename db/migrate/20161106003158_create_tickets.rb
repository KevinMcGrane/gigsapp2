class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :gig_id
      t.integer :user_id
      t.string :price
      t.boolean :over_18s

      t.timestamps null: false
    end
  end
end
