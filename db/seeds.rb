# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contact = Contact.new({first_name: "Anna", last_name: "Johnson", email: "anna.johnson@gmail.com", phone_number: "123-222-1111"})
contact.save

contact = Contact.new({first_name: "Johnny", last_name: "Appleseed", email: "japlseed@gmail.com", phone_number: "444-567-9999"})
contact.save

contact = Contact.new({first_name: "Cher", email: "cher@gmail.com", phone_number: "999-999-9999"})
contact.save