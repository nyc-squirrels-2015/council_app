# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

steven = User.create!(email:'steven@example.com', firstname:'Steven',lastname:'cassidy', password:'1')
missy  = User.create!(email:'missy@example.com', firstname:'Missy', lastname: 'wimberly', password:'1')
sagar  = User.create!(email:'sagar@example.com', firstname:'Sagar', lastname: 'rathi', password:'1')
jay    = User.create!(email:'jay@example.com', firstname:'Jay', lastname: 'davis', password:'1')
anna   = User.create!(email:'anna@example.com', firstname:'Anna', lastname: 'taberski', password:'1')

steven.friends << missy
missy.friends << sagar
missy.friends << anna
missy.friends << jay
jay.friends << anna
sagar.friends << jay

cou = Council.create!(user:steven, council_name:"Steven's trusted advisors")
cou.members << missy
cou.members << sagar

mcou = Council.create!(user:missy, council_name:"Missy's pals")
mcou.members << sagar
mcou.members << jay

q = missy.questions.create!(council: mcou, content:'What do you think of this dress?')
q.answers.create!(user:sagar, like: true)



