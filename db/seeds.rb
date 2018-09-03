# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Group.destroy_all
Contact.destroy_all

#groups dummy data
groups = []
#Create new group
groups << Group.create(name: "Avvocati").id
groups << Group.create(name: "Commercialisti").id
groups << Group.create(name: "Altri").id

contacts =[]

#generate 20 fake contacts
20.times do |i|
	new_contact = {
		id: i,
		title: Faker::Name.prefix,
		albo: Faker::Address.city,
		name: Faker::Name.first_name,
		surname: Faker::Name.last_name,
		company: Faker::Company.name,
		email: Faker::Internet.email,
		website: Faker::Internet.domain_name,
		skype: Faker::Internet.username,
		phone: Faker::PhoneNumber.phone_number,
		mobile: Faker::PhoneNumber.cell_phone,
		address: Faker::Address.street_address,
		city: Faker::Address.city,
		zip: Faker::Address.zip_code,
		webinar: Faker::Boolean.boolean(0.2),
        relatore_a_londra: Faker::Boolean.boolean,
        relatore_italia: Faker::Boolean.boolean(0.2),
        specializzazioni: Faker::Job.position,
        group_id: groups[Random.rand(0..2)]
	}
	contacts.push(new_contact)
end

# save the fake data to database
Contact.create(contacts)

p "#{Group.count} groups successfully created"
p "#{Contact.count} contacts successfully created"