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
missy.friends << steven
jay.friends << anna
sagar.friends << jay

cou = Council.create!(user:steven, council_name:"Steven's trusted advisors")
cou.members << missy
cou.members << sagar

mcou = Council.create!(user:missy, council_name:"Missy's pals")
mcou.members << sagar
mcou.members << jay

jcou = Council.create!(user:jay, council_name:"Apartment Council")
jcou.members << missy
jcou.members << anna

acou = Council.create!(user:anna, council_name:"Spring Council")
acou.members << missy
acou.members << sagar

scou = Council.create!(user:sagar, council_name:"Travel")
scou.members << jay
scou.members << steven

dinner = missy.questions.create!(council: mcou, content:'What do you think of this dinner?')
dinner.image = File.open("/Users/melissawimberly/Desktop/food.jpg")
dinner.save!
dinner.answers.create!(user:sagar, like: true)

hat =  steven.questions.build(council: cou, content:'Do you like this dress?')
hat.image = File.open('/Users/melissawimberly/Desktop/coverpicture.JPG');
hat.save!
hat.answers.create!(user:steven, like: true)

restaurant =  steven.questions.create!(council: cou, content:'Do you like this store?')
restaurant.image = File.open("/Users/melissawimberly/Desktop/store.JPG")
restaurant.save!
restaurant.answers.create!(user:steven, like:true)

park = steven.questions.create!(council: cou, content:'Is this a good park for a picnic?')
park.image = File.open("/Users/melissawimberly/Desktop/park.JPG")
park.save!
park.answers.create!(user:steven, like:true)

tech = steven.questions.create!(council: cou, content:"Should I buy this iphone?")
tech.image = File.open("/Users/melissawimberly/Desktop/phone.jpg")
tech.save!
tech.answers.create!(user:steven, like:false)

destination =  sagar.questions.create!(council: scou, content:'Should I take a swim after?')
destination.image = File.open("/Users/melissawimberly/Desktop/seine.jpg")
destination.save!
destination.answers.create!(user:steven, like:true)

apartment = jay.questions.create!(council: jcou, content:"Should I rent this apartment?")
apartment.image = File.open("/Users/melissawimberly/Desktop/wilde.jpg")
apartment.save!
apartment.answers.create!(user:jay, like:true)

spring = anna.questions.create!(council: acou, content: "Is it spring yet?")
spring.image = File.open("/Users/melissawimberly/Desktop/spring.jpg")
spring.save!
spring.answers.create!(user:anna, like: true)

cute = missy.questions.build(council: mcou, content:"Is he cute?")
cute.image = File.open('/Users/melissawimberly/Desktop/sparta.JPG');
cute.save!
cute.answers.create!(user: missy, like: true)
