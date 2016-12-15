class AddAttachmentToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :attachment, :string
  end
end
