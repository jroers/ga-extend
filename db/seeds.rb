# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

user1_data = {
	first: 'test',
	last: 'user',
	email: 'test@user.com',
	password: '123',
	program: 'WDI',
	cohort: '25',
	current_title: 'Grand Master'
}
user1= User.create(user1_data)

card1_data = {
	family: '',
	title: '',
	working_on: '',
}
card1 = Card.create(card1_data)


