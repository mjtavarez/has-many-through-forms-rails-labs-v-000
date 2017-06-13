# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "MC", email: "mc@mc.com")
User.create(username: "MT", email: 'mt@mjt.com')

Category.create(name: "lies")
Category.create(name: "true")
Category.create(name: "lol")
