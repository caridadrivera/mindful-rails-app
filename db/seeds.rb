# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name:"John", age:26, about:"About mee", email:"something1@something.com", password:"12345")
User.create(name:"Cari", age:26, about:"About cari", email:"something2@something.com", password:"12345")
User.create(name:"peter", age:30, about:"About peter", email:"something3@something.com", password:"12345")
User.create(name:"george", age:21, about:"About george", email:"something4@something.com", password:"12345")


Activity.create(name:"yoga", description:"yoga stuff", length:10)
Activity.create(name:"meditation", description:"meditation stuff", length:5)
Activity.create(name:"breathing", description:"breathing stuff", length:2)

Friendship.create(user_id: 1, friend_id: 2)
Friendship.create(user_id: 1, friend_id: 3)

Day.create(date: "2019/2/10", happiness: 5, user_id: 1)
Day.create(date: "2019/3/24", happiness: 3, user_id: 1)
Day.create(date: "2019/5/1", happiness: 10, user_id: 2)
Day.create(date: "2019/4/16", happiness: 10, user_id: 1)
Day.create(date: "2019/4/16", happiness: 10, user_id: 2)
Day.create(date: "2019/4/16", happiness: 10, user_id: 3)

ActivityInstance.create(day_id: 1, activity_id: 2)
ActivityInstance.create(day_id: 1, activity_id: 1)
ActivityInstance.create(day_id: 1, activity_id: 3)
ActivityInstance.create(day_id: 2, activity_id: 2)
ActivityInstance.create(day_id: 2, activity_id: 3)
ActivityInstance.create(day_id: 4, activity_id: 1)
ActivityInstance.create(day_id: 4, activity_id: 3)
ActivityInstance.create(day_id: 4, activity_id: 2)
ActivityInstance.create(day_id: 5, activity_id: 1)
ActivityInstance.create(day_id: 5, activity_id: 3)
ActivityInstance.create(day_id: 5, activity_id: 2)
ActivityInstance.create(day_id: 6, activity_id: 1)
ActivityInstance.create(day_id: 6, activity_id: 3)
ActivityInstance.create(day_id: 6, activity_id: 2)
