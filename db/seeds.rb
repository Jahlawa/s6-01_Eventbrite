# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do 

	#  ----- Users -----
	u = User.create(
		last_name: Faker::Name.name,
		first_name: Faker::Name.first_name,
		email: ["johnneige@yopmail.com", "sansalarelou@yopmail.com", "brangrosnez@yopmail.com"].sample,
		description: Faker::Quote.yoda, 
		encrypted_password: "dumdum"
		)
	puts "#{u.first_name} added!"
end