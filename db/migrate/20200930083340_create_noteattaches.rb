class CreateNoteattaches < ActiveRecord::Migration[5.1]
  def change
    create_table :noteattaches do |t|
      t.string :name
      t.string :attach
      t.integer :note_id

      t.timestamps
    end
  end
end
