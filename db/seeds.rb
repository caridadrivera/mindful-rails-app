# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Activity.create(name:"yoga", description:"yoga stuff", instruction:"do this for yoga", length:10)
Activity.create(name:"meditation", description:"meditation stuff", instruction:"do this for meditation", length:5)
Activity.create(name:"breathing", description:"breathing stuff", instruction:"do this for breathing", length:2)

Friendship.create(user_id: 1, friend_id: 2)

Day.create(date: "4/10/19", happiness: 5, user_id: 1)
Day.create(date: "3/24/19", happiness: 3, user_id: 1)
Day.create(date: "5/1/19", happiness: 10, user_id: 2)

ActivityInstance.create(day_id: 1, activity_id: 2)
