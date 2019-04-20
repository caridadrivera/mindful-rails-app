# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Activity.create(name:"Yoga", description:"Yoga uses breathing techniques, exercise and meditation. It helps to improve health and happiness.", length:10, img_url: "https://cdn2.stylecraze.com/wp-content/uploads/2013/11/What-Is-The-Right-Time-To-Practice-Yoga-ss.jpg")
Activity.create(name:"Meditation", description:"It is the act of quieting the mind. Meditation allows the brain to take a break from the stresses of the day to day life by using mindfulness, or focusing their mind on a particular object, thought or activity – to train attention and awareness, which in turn clears their mind and reduces anxiety and depression. ", length:10, img_url: "https://www.yogajournal.com/.image/t_share/MTQ2MTgwNzM5MDQ5OTg5NjY0/sunset-meditation-mudra.jpg")
Activity.create(name:"Breathing", description:"A lot of our anxiety is reduced by simply counting and measuring our breaths. A lot of people do not understand that taking a minute to breathe, should be taken quite literal. When there’s a shortage of oxygen, the brain will work slower, which in turn could increase anxiety and depression", length:2, img_url: "https://www.verywellmind.com/thmb/U2vg31r5C9MwqUCX_hef_qRu0ms=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/iStock-636069988-5a99c7548023b9003666552b.jpg")
Activity.create(name:"Running", description:"Running. It is said to reduce depression and stress as well. According to Health.org, running is a great exercise for the heart. Over time, it helps your heart pump more efficiently. Running keeps the arteries elastic so blood flows smoothly.", length: 10, img_url: "https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/B25K+620.jpg")
Activity.create(name:"Gym", description:"There are Stepmasters, Weights, Treadmills, Inclined-Threadmills, Bicycles, and some may have extra equipment. All get your body moving and have health benefits.", length:30, img_url: "https://img1.wsimg.com/isteam/stock/kaOWp0q/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:700,cg:true")
Activity.create(name:"Sage/Smudge", description:"It is the act of burning sage and other healing herbs for the purpose of spiritual cleansing. Sage is said to clean energies from negativity and stress.", length:5, img_url: "https://www.ancient-origins.net/sites/default/files/field/image/Smudging-with-white-sage.jpg")
Activity.create(name:"Dancing", description:"The act of moving your body to the sound of music.", length:5, img_url: "https://www.clubhousebistro.com/resourcefiles/mainimages/nightclub-facilities-at-foster-city-california-restaurant-top.jpg" )
