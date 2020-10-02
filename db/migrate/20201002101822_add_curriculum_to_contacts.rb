class AddCurriculumToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :curriculum, :string
  end
end
