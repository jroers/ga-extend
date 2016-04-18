# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Card.destroy_all

user1_data = {
	first: 'test',
	last: 'user',
	email: 'test@user.com',
	password: '123',
	program: 'WDI',
	cohort: '25',
	current_title: 'Grand Master'
}
user2_data = {
	first: 'Alex',
	last: 'Sirjani',
	email: 'alex@sirjani.com',
	password: '123',
	program: 'UXDI',
	cohort: '5',
	current_title: ''
}
user3_data = {
	first: 'Cindy',
	last: 'Tong',
	email: 'cindy@tong.com',
	password: '123',
	program: 'WDI',
	cohort: '32',
	current_title: ''
}
user4_data = {
	first: 'Stephen',
	last: 'Yoshizawa',
	email: 'stephen@yoshizawa.com',
	password: '123',
	program: 'DA',
	cohort: '1',
	current_title: ''
}
user5_data = {
	first: 'Curt',
	last: 'Prins',
	email: 'curt@prins.com',
	password: '123',
	program: 'PMI',
	cohort: '3',
	current_title: ''
}
user6_data = {
	first: 'Ryan',
	last: 'Wallace',
	email: 'ryan@wallace.com',
	password: '123',
	program: 'PMI',
	cohort: '3',
	current_title: ''
}
user7_data = {
	first: 'Marco',
	last: 'default',
	email: 'marco@default.com',
	password: '123',
	program: 'PMI',
	cohort: '3',
	current_title: ''
}
user8_data = {
	first: 'Harry',
	last: 'Richards',
	email: 'harry@richards.com',
	password: '123',
	program: 'UXDI',
	cohort: '3',
	current_title: ''
}
user9_data = {
	first: 'Stacey',
	last: 'Barlett',
	email: 'stacy@barlett.com',
	password: '123',
	program: 'PMI',
	cohort: '3',
	current_title: ''
}
user1= User.create(user1_data)
user2= User.create(user2_data)
user3= User.create(user3_data)
user4= User.create(user4_data)
user5= User.create(user5_data)
user6= User.create(user6_data)
user7= User.create(user7_data)
user8= User.create(user8_data)
user9= User.create(user9_data)


card1a_data = {
	family: 'project',
	title: 'UX designer looking for a digital marketing expert',
	working_on: 'Working on a new product and need someone to create content for the blog and attract new customers to the website with SEO.',
}
card2a_data = {
	family: 'project',
	title: 'Developer looking for a Designer to help with a new startup',
	working_on: 'Beige Notes, an app that lets you avoid ghosting. #NoMoreGhosting',
}
card3a_data = {
	family: 'skill_share',
	title: 'Data Analyst looking to understand how to create a data base',
	working_on: 'Need to improve my database skills.',
}
card4a_data = {
	family: 'project',
	title: 'PM looking for a Developer to build an app.',
	working_on: 'App that tracks the whereabouts of Louis Garcia',
}
card5a_data = {
	family: 'skill_share',
	title: 'Looking to improve SQL skills',
	working_on: 'wants to brush up on SQL data analysis',
}
card6a_data = {
	family: 'project',
	title: 'PM looking for Developer to build app.',
	working_on: 'App to help track events that your friends are attending.',
}
card7a_data = {
	family: 'project',
	title: 'App developer seeking Instagram guru ',
	working_on: 'App to connect sustainable fashion brand owners with Instagram influencers',
}
card8a_data = {
	family: 'networking',
	title: 'abysitting opportunities - qualifications needed',
	working_on: 'Potrero Hill parent association.  Contact me if you are interested in babysitting.',
}

card1 = Card.create(card1a_data)
card2 = Card.create(card2a_data)
card3 = Card.create(card3a_data)
card4 = Card.create(card4a_data)
card5 = Card.create(card5a_data)
card6 = Card.create(card6a_data)
card7 = Card.create(card7a_data)
card8 = Card.create(card8a_data)




user2.cards << card1
user3.cards << card2
user4.cards << card3
user5.cards << card4
user6.cards << card5
user7.cards << card6
user8.cards << card7
user9.cards << card8



