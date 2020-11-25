class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.date :task_date
      t.string :contact_name
      t.text :task_desc
      t.integer :contact_id

      t.timestamps
    end
  end
end
