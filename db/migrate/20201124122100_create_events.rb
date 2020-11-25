class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.integer :contact_id

      t.timestamps
    end
  end
end
