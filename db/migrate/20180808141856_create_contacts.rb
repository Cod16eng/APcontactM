class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :albo
      t.string :name
      t.string :surname
      t.string :company
      t.string :email
      t.string :website
      t.string :skype
      t.string :phone
      t.string :mobile
      t.string :address
      t.string :city
      t.string :zip
      t.string :webinar
      t.string :relatore_a_londra
      t.string :relatore_italia
      t.string :specializzazioni

      t.timestamps
    end
  end
end
