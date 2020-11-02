# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
Participation.destroy_all

require 'faker'
Faker::Config.locale = :fr

#Create 10 Users 
1.times do
        User.create!(password: Faker::Internet.password, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  description: Faker::Lorem.sentence, email: Faker::Internet.email(domain: 'yopmail.com'))
    end
tp User.all