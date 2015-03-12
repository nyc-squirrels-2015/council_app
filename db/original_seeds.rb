# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

steven = User.create!(email:'steven@gmail.com', firstname:'Steven',lastname:'Cassidy', password:'1', prof_pic: '/steven.jpeg')
missy  = User.create!(email:'missy@gmail.com', firstname:'Missy', lastname: 'Wimberly', password:'1', prof_pic: '/coverpicture.JPG')
sagar  = User.create!(email:'sagar@gmail.com', firstname:'Sagar', lastname: 'Rathi', password:'1', prof_pic: '/sagar.jpeg')
jay    = User.create!(email:'jay@gmail.com', firstname:'Jay', lastname: 'Davis', password:'1', prof_pic: '/jay.jpeg')
anna   = User.create!(email:'anna@gmail.com', firstname:'Anna', lastname: 'Taberski', password:'1', prof_pic: '/anna.jpeg')


anna.friends << missy
anna.friends << sagar
anna.friends << jay
anna.friends << steven


mcou = Council.create!(user:missy, council_name:"Fashion")
mcou.members << sagar
mcou.members << jay
mcou.members << anna

jcou = Council.create!(user:jay, council_name:"Pets")
jcou.members << missy
jcou.members << anna

acou = Council.create!(user:anna, council_name:"Food")
acou.members << missy
acou.members << sagar
acou.members << jay
acou.members << steven


aacou = Council.create!(user:anna, council_name:"Costumes")
aacou.members << missy
aacou.members << sagar
aacou.members << jay
aacou.members << steven

scou = Council.create!(user:sagar, council_name:"Weddings")
scou.members << jay
scou.members << steven
scou.members << anna

dinner = anna.questions.create!(council: acou, content:'Good dinner?')
dinner.image = File.open("/Users/melissawimberly/Desktop/food.jpg")
dinner.save!
dinner.answers.create!(user:sagar, like: true)
dinner.answers.create!(user:jay, like: true)
dinner.answers.create!(user:missy, like: true)
dinner.answers.create!(user:steven, like: false)

dress =  missy.questions.build(council: mcou, content:'Do you like this dress?')
dress.image = File.open('/Users/melissawimberly/Desktop/coverpicture.JPG');
dress.save!
dress.answers.create!(user:steven, like: true)


park = jay.questions.create!(council: jcou, content:'picnic time?')
park.image = File.open("/Users/melissawimberly/Desktop/park.JPG")
park.save!
park.answers.create!(user:steven, like:true)


destination =  sagar.questions.create!(council: scou, content:'Should I take a swim after?')
destination.image = File.open("/Users/melissawimberly/Desktop/seine.jpg")
destination.save!
destination.answers.create!(user:steven, like:true)

dog = jay.questions.create!(council: jcou, content:"Should I trust this dog?")
dog.image = File.open("/Users/melissawimberly/Desktop/jay_dog.JPG")
dog.save!
dog.answers.create!(user:anna, like:true)

spring = anna.questions.create!(council: acou, content: "Is it spring yet?")
spring.image = File.open("/Users/melissawimberly/Desktop/spring.jpg")
spring.save!
spring.answers.create!(user:missy, like: true)

wedding = sagar.questions.create!(council: scou, content: "Should I marry her?")
wedding.image = File.open("/Users/melissawimberly/Desktop/sagar_wedding.png")
wedding.save!
wedding.answers.create!(user:missy, like: true)
