class AddContactIdToNoteattach < ActiveRecord::Migration[5.1]
  def change
    add_column :noteattaches, :contact_id, :integer
  end
end
