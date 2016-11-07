class AddColumnToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :gig_name, :string
  end
end
