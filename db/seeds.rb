# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning the database"

Message.delete_all
Review.delete_all
Chatroom.delete_all
Booking.delete_all
Offer.delete_all
User.delete_all

puts "** Creating users **"

chrissie = User.new(
  email: "chrissie@web.de",
  password: "123456",
  first_name: "Chrissie",
  last_name: "Meier"
)
chrissie_avatar = URI.open("https://images.unsplash.com/photo-1531944342704-649d95a5838d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
chrissie.photo.attach(io: chrissie_avatar, filename: "chrissie_avatar.jpeg", content_type: "image/jpeg")
chrissie.save!

puts "Created user: #{chrissie.first_name}"

juergen = User.new(
  email: "juergen@dose.de",
  password: "123456",
  first_name: "Jürgen",
  last_name: "Dose"
)
juergen_avatar = URI.open("https://images.unsplash.com/photo-1520013474397-db9000d85a31?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
juergen.photo.attach(io: juergen_avatar, filename: "juergen_avatar.jpeg", content_type: "image/jpeg")
juergen.save!

puts "Created user: #{juergen.first_name}"

julian = User.new(
  email: "julian@gmx.de",
  password: "123456",
  first_name: "Julian",
  last_name: "Zimmer"
)
julian_avatar = URI.open("https://images.unsplash.com/photo-1592673750632-ef9c1b36c618?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
julian.photo.attach(io: julian_avatar, filename: "julian_avatar.jpeg", content_type: "image/jpeg")
julian.save!

puts "Created user: #{julian.first_name}"

sandra = User.new(
  email: "sandra@gmail.com",
  password: "123456",
  first_name: "Sandra",
  last_name: "Bolton"
)
sandra_avatar = URI.open("https://images.unsplash.com/photo-1619443143266-6008deeee7c2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80")
sandra.photo.attach(io: sandra_avatar, filename: "sandra_avatar.jpeg", content_type: "image/jpeg")
sandra.save!

puts "Created user: #{sandra.first_name}"

puts "** Creating offers **"

chrissie_offer_1 = Offer.new(
  category: "Outdoor and camping",
  condition: "Used but okay",
  title: "My red Canoe",
  description: "This is my trusty canoe that has served me well on many different adventures!
While it may not be the newest and best looking canoe I can assure you it works like a charm. The paddles are in good condition as well. One of the paddles broke at the very top once but it got fixed with epoxy resin, so don't worry, it won't break again, I promise.
Feel free to send me a message if you have any other questions!
Also, please send me pictures from your adventure with my canoe, I would love to see where it has been ;).",
  street: "Fürstenwalder Damm",
  house_no: "838",
  zip_code: "12589",
  city: "Berlin",
  country: "DE",
  compensation_type: "Price per day",
  compensation_value: "10",
  user_id: chrissie.id
)
chrissie_offer_1_photo_1 = URI.open("https://images.unsplash.com/photo-1604537466573-5e94508fd243?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1349&q=80")
chrissie_offer_1.photos.attach(io: chrissie_offer_1_photo_1, filename: "chrissie_offer_1_photo_1.jpeg", content_type: "image/jpeg")
chrissie_offer_1_photo_2 = URI.open("https://images.unsplash.com/photo-1556213865-7d7377053e1f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2855&q=80")
chrissie_offer_1.photos.attach(io: chrissie_offer_1_photo_2, filename: "chrissie_offer_1_photo_2.jpeg", content_type: "image/jpeg")
chrissie_offer_1_photo_3 = URI.open("https://images.unsplash.com/photo-1568846023566-072d3f1bc93b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80")
chrissie_offer_1.photos.attach(io: chrissie_offer_1_photo_3, filename: "chrissie_offer_1_photo_3.jpeg", content_type: "image/jpeg")
chrissie_offer_1_photo_4 = URI.open("https://images.unsplash.com/photo-1578186808502-f90323c4f7a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
chrissie_offer_1.photos.attach(io: chrissie_offer_1_photo_4, filename: "chrissie_offer_1_photo_4.jpeg", content_type: "image/jpeg")
chrissie_offer_1_photo_5 = URI.open("https://images.unsplash.com/photo-1555489020-a98a84149129?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=666&q=80")
chrissie_offer_1.photos.attach(io: chrissie_offer_1_photo_5, filename: "chrissie_offer_1_photo_5.jpeg", content_type: "image/jpeg")
chrissie_offer_1.save!

puts "Created offer '#{chrissie_offer_1.title}' of '#{chrissie_offer_1.user.first_name}'"

chrissie_offer_2 = Offer.new(
  category: "Bicycle",
  condition: "Very good",
  title: "Great hipster bike",
  description: "Hey there, stranger!
I will be out of town for a while and I think it won't be of any use to me or my bicycle if it would sit in the basement unused collecting dust and rust.
So please, save it from a boring life hidden away in my basement!
As you can tell from the pictures the bicycle is in a very good condition and holds a very dear place in my heart, so please take good care of it.
Feel free to send me a message if you have any other questions!",
  street: "Oranienstraße",
  house_no: "57",
  zip_code: "10969",
  city: "Berlin",
  country: "DE",
  compensation_type: "Price per hour",
  compensation_value: "5",
  user_id: chrissie.id
)
chrissie_offer_2_photo_1 = URI.open("https://images.unsplash.com/photo-1501147830916-ce44a6359892?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
chrissie_offer_2.photos.attach(io: chrissie_offer_2_photo_1, filename: "chrissie_offer_2_photo_1.jpeg", content_type: "image/jpeg")
chrissie_offer_2_photo_2 = URI.open("https://images.unsplash.com/photo-1531502774286-5e4e8e94879f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
chrissie_offer_2.photos.attach(io: chrissie_offer_2_photo_2, filename: "chrissie_offer_2_photo_2.jpeg", content_type: "image/jpeg")
chrissie_offer_2_photo_3 = URI.open("https://images.unsplash.com/photo-1475666675596-cca2035b3d79?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
chrissie_offer_2.photos.attach(io: chrissie_offer_2_photo_3, filename: "chrissie_offer_2_photo_3.jpeg", content_type: "image/jpeg")
chrissie_offer_2_photo_4 = URI.open("https://images.unsplash.com/photo-1487803836022-91054ca05fdd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGJpa2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
chrissie_offer_2.photos.attach(io: chrissie_offer_2_photo_4, filename: "chrissie_offer_2_photo_4.jpeg", content_type: "image/jpeg")
chrissie_offer_2.save!

puts "Created offer '#{chrissie_offer_2.title}' of '#{chrissie_offer_2.user.first_name}'"

chrissie_offer_3 = Offer.new(
  category: "Winter sports",
  condition: "Not perfect but working",
  title: "Fancy but older Snowboard",
  description: "I kept this board as a backup for some years now, but it was just sitting in the attic for what feels like ages.
As you can see it is not the newest, hottest model and generally more suited for beginners that want to try out snowboarding.
It's a rather short board so it should also suit people well that aren't necessarily as tall as me. It has it's quirks though, especially the right binding needs a gentle bit of force to fully close, but nothing to be worried about!
Just send me a dm if you want to know more about the board!",
  street: "Oranienstraße",
  house_no: "53",
  zip_code: "10969",
  city: "Berlin",
  country: "DE",
  compensation_type: "Free",
  compensation_value: "Free",
  user_id: chrissie.id
)
chrissie_offer_3_photo_1 = URI.open("https://images.unsplash.com/photo-1609785784594-2488968ff4d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHNub3dib2FyZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
chrissie_offer_3.photos.attach(io: chrissie_offer_3_photo_1, filename: "chrissie_offer_3_photo_1.jpeg", content_type: "image/jpeg")
chrissie_offer_3_photo_2 = URI.open("https://images.unsplash.com/photo-1498146831523-fbe41acdc5ad?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c25vd2JvYXJkfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
chrissie_offer_3.photos.attach(io: chrissie_offer_3_photo_2, filename: "chrissie_offer_3_photo_2.jpeg", content_type: "image/jpeg")
chrissie_offer_3_photo_3 = URI.open("https://images.unsplash.com/photo-1478700485868-972b69dc3fc4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
chrissie_offer_3.photos.attach(io: chrissie_offer_3_photo_3, filename: "chrissie_offer_3_photo_3.jpeg", content_type: "image/jpeg")
chrissie_offer_3.save!

puts "Created offer '#{chrissie_offer_3.title}' of '#{chrissie_offer_3.user.first_name}'"

juergen_offer_1 = Offer.new(
  category: "Fishing",
  condition: "Very good",
  title: "Trio Rex Surf Rod",
  description: "Hey fishing friends!
I'm offering my backup surf fishing rod for rental since I've recently been more of a deep sea kinda guy.
It's a pretty solid, carbon Trio Rex Surf Rod that is pretty light given its length. It comes with all the Okuma luxury you can think of: easy grip connection, a nice bag and its resistant to salt water.
The spinning reel is a Trio Rex Salt Spinning Reel, so it won't jam even after a long day in or near the waters.
Have fun!",
  street: "Ballindamm",
  house_no: "13",
  zip_code: "20095",
  city: "Hamburg",
  country: "DE",
  compensation_type: "Price per day",
  compensation_value: "55",
  user_id: juergen.id
)
juergen_offer_1_photo_1 = URI.open("https://images.unsplash.com/photo-1583249598754-b7a2f59651fb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80")
juergen_offer_1.photos.attach(io: juergen_offer_1_photo_1, filename: "juergen_offer_1_photo_1.jpeg", content_type: "image/jpeg")
juergen_offer_1_photo_2 = URI.open("https://images.unsplash.com/photo-1533991310801-340302384c22?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
juergen_offer_1.photos.attach(io: juergen_offer_1_photo_2, filename: "juergen_offer_1_photo_2.jpeg", content_type: "image/jpeg")
juergen_offer_1.save!

puts "Created offer '#{juergen_offer_1.title}' of '#{juergen_offer_1.user.first_name}'"

juergen_offer_2 = Offer.new(
  category: "Outdoor and camping",
  condition: "Not perfect but working",
  title: "Lightweight Tent",
  description: "Hey people of the great outdoors!
Want to spend a nice weekend on the beautiful coast of the baltic sea? Don't wanna rent an expensive van or even a camper? Well, why not take my tent!
It has always been a good companion of mine and even survived a major battering during a crazy snowstorm in Nepal. This also is the reason why it isn't in the most perfect condition anymore, to say mildly. I don't wanna just throw it away though.
May it serve you well on your next adventure!",
  street: "Ballindamm",
  house_no: "13",
  zip_code: "20095",
  city: "Hamburg",
  country: "DE",
  compensation_type: "Other",
  compensation_value: "Sixpack of beer",
  user_id: juergen.id
)
juergen_offer_2_photo_1 = URI.open("https://images.unsplash.com/photo-1550957886-ac45931e5779?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80")
juergen_offer_2.photos.attach(io: juergen_offer_2_photo_1, filename: "juergen_offer_2_photo_1.jpeg", content_type: "image/jpeg")
juergen_offer_2.save!

puts "Created offer '#{juergen_offer_2.title}' of '#{juergen_offer_2.user.first_name}'"

juergen_offer_3 = Offer.new(
  category: "Water sports",
  condition: "Not perfect but working",
  title: "Surfboard - Fanatic Shark LTD 135",
  description: "Hey fellow surfer (to be?)
I proudly present to you: My old fanatic shark 135, the perfect board for people that want to dabble into windsurfing!
Its a pretty big board that will provide a stable base for you to practice your moves on, or go fast on calm waters - if you are an experienced surfers.
While it isn't the newest board anymore I always took great care of it - and hope you will as well - so it is still in great condition. Sometimes the power joint (the thing where the sail connects) needs a bit of force to come loose if you want to move it around a bit, just make sure to tighten it up again! :D
Hang loose!",
  street: "Ellenbogen",
  house_no: "",
  zip_code: "25980",
  city: "List",
  country: "DE",
  compensation_type: "Price per day",
  compensation_value: "30",
  user_id: juergen.id
)
juergen_offer_3_photo_1 = URI.open("https://images.unsplash.com/photo-1548332445-91561aae5ea4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3VyZmJvYXJkJTIwd2luZHN1cmZpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
juergen_offer_3.photos.attach(io: juergen_offer_3_photo_1, filename: "juergen_offer_3_photo_1.jpeg", content_type: "image/jpeg")
juergen_offer_3_photo_2 = URI.open("https://images.unsplash.com/photo-1562051544-c8a253660284?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3VyZmJvYXJkJTIwd2luZHN1cmZpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
juergen_offer_3.photos.attach(io: juergen_offer_3_photo_2, filename: "juergen_offer_3_photo_2.jpeg", content_type: "image/jpeg")
juergen_offer_3_photo_3 = URI.open("https://images.unsplash.com/photo-1530717449302-271006cdc1bf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8d2luZHN1cmZpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
juergen_offer_3.photos.attach(io: juergen_offer_3_photo_3, filename: "juergen_offer_3_photo_3.jpeg", content_type: "image/jpeg")
juergen_offer_3.save!

puts "Created offer '#{juergen_offer_3.title}' of '#{juergen_offer_3.user.first_name}'"

juergen_offer_4 = Offer.new(
  category: "Water sports",
  condition: "Used but okay",
  title: "Gaastra Manic HD Windsurf",
  description: "Hey fellow surfer (to be?)
Want to become the next windsurfing freestyle god of Sylt? Well, fear not, for my Gaastra sail will take you there in no time!
Its a freestyle wave / wave sail that suits beginners just as well as intermediate surfers.
It is in great condition and has 4.2m². It comes with a mast and boom included, though the boom isn't in as good of a shape as the sail, it will still definitely do and withstand even the fiercest of winds! ;)
Hang loose!",
  street: "Am Hafen",
  house_no: "28",
  zip_code: "25992",
  city: "List",
  country: "DE",
  compensation_type: "Price per hour",
  compensation_value: "10",
  user_id: juergen.id
)
juergen_offer_4_photo_1 = URI.open("https://images.unsplash.com/photo-1544230356-6e6f3ea39960?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
juergen_offer_4.photos.attach(io: juergen_offer_4_photo_1, filename: "juergen_offer_4_photo_1.jpeg", content_type: "image/jpeg")
juergen_offer_4_photo_2 = URI.open("https://images.unsplash.com/photo-1562051544-c8a253660284?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1282&q=80")
juergen_offer_4.photos.attach(io: juergen_offer_4_photo_2, filename: "juergen_offer_4_photo_2.jpeg", content_type: "image/jpeg")
juergen_offer_4_photo_3 = URI.open("https://images.unsplash.com/photo-1562051544-9f4b98e8c74f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1355&q=80")
juergen_offer_4.photos.attach(io: juergen_offer_4_photo_3, filename: "juergen_offer_4_photo_3.jpeg", content_type: "image/jpeg")
juergen_offer_4.save!

puts "Created offer '#{juergen_offer_4.title}' of '#{juergen_offer_4.user.first_name}'"


julian_offer_1 = Offer.new(
  category: "Water sports",
  condition: "Very good",
  title: "Luxury Sailing Boat",
  description: "You can't really say you have been to Rügen, if you haven't spent some time cruising along it's coast in a sailboat.
This is why I want to spare you from this demise and offer my lovely boat with a luxurious cabin for rental!
It offers space for up to four people overnight and comes with a kitchen that has everything you should need.
Did I mention the beer holder next to the ship's wheel?
Have fun!
Please only open a booking request if you are an experienced sailor and have a license.",
  street: "Seestraße",
  house_no: "13",
  zip_code: "18439",
  city: "Stralsund",
  country: "DE",
  compensation_type: "Price per hour",
  compensation_value: "80",
  user_id: julian.id
)
julian_offer_1_photo_1 = URI.open("https://images.unsplash.com/photo-1600250686183-a6809e5d201b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
julian_offer_1.photos.attach(io: julian_offer_1_photo_1, filename: "julian_offer_1_photo_1.jpeg", content_type: "image/jpeg")
julian_offer_1_photo_2 = URI.open("https://images.unsplash.com/photo-1573925805234-22b9e43a5450?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1347&q=80")
julian_offer_1.photos.attach(io: julian_offer_1_photo_2, filename: "julian_offer_1_photo_2.jpeg", content_type: "image/jpeg")
julian_offer_1_photo_3 = URI.open("https://images.unsplash.com/photo-1605387202149-47169c4ea58a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
julian_offer_1.photos.attach(io: julian_offer_1_photo_3, filename: "julian_offer_1_photo_3.jpeg", content_type: "image/jpeg")
julian_offer_1_photo_4 = URI.open("https://images.unsplash.com/photo-1607340696730-3a73c584dc92?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
julian_offer_1.photos.attach(io: julian_offer_1_photo_4, filename: "julian_offer_1_photo_4.jpeg", content_type: "image/jpeg")
julian_offer_1.save!

puts "Created offer '#{julian_offer_1.title}' of '#{julian_offer_1.user.first_name}'"

julian_offer_2 = Offer.new(
  category: "Rackets, sticks and clubs",
  condition: "Very good",
  title: "Golf Callway Driver for perfect swings",
  description: "A Club so good, I am tempted to give you a whole-in-one guarantee.
Feeling like you can't drive the ball the way you want to? Well, the Callaway X Hot Fairway is made out of Carpenter 455 stainless steel for a reason. Being 40 percent thinner, with a 90 percent larger sweet spot jam, it produces a significantly hotter response all over the face, providing superior launch conditions.
Become the next Tiger Woods!",
  street: "Golfweg",
  house_no: "22",
  zip_code: "14109",
  city: "Berlin",
  country: "DE",
  compensation_type: "Price per day",
  compensation_value: "19",
  user_id: julian.id
)
julian_offer_2_photo_1 = URI.open("https://images.unsplash.com/photo-1565657569921-b0f2de340b75?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80")
julian_offer_2.photos.attach(io: julian_offer_2_photo_1, filename: "julian_offer_2_photo_1.jpeg", content_type: "image/jpeg")
julian_offer_2_photo_2 = URI.open("https://images.unsplash.com/photo-1593540537882-45954d30ec19?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80")
julian_offer_2.photos.attach(io: julian_offer_2_photo_2, filename: "julian_offer_2_photo_2.jpeg", content_type: "image/jpeg")
julian_offer_2_photo_3 = URI.open("https://images.unsplash.com/photo-1592459777315-00ab1374a953?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1300&q=80")
julian_offer_2.photos.attach(io: julian_offer_2_photo_3, filename: "julian_offer_2_photo_3.jpeg", content_type: "image/jpeg")
julian_offer_2.save!

puts "Created offer '#{julian_offer_2.title}' of '#{julian_offer_2.user.first_name}'"

sandra_offer_1 = Offer.new(
  category: "Skating",
  condition: "Used but okay",
  title: "Chaya Ruby Hard Roller Derby Skates",
  description: "Hey there!
We are always looking for new people for our Roller Derby team, so why don't you come by and try it out!
You are more than welcome to take my Chaya Rubies for a spin and you will probably fall in love with them as fast as I did :).
They have some marks on them and could use some new bearings, but nothing that will slow you down too much.
If you have some more questions about the skates, or Roller Derby, just send me message, I'm more than happy to answer.
Ride fast!",
  street: "Landwehrstraße",
  house_no: "46",
  zip_code: "80336",
  city: "München",
  country: "DE",
  compensation_type: "Price per day",
  compensation_value: "12",
  user_id: sandra.id
)
sandra_offer_1_photo_1 = URI.open("https://images.unsplash.com/photo-1571032800240-1cc2e680b00c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
sandra_offer_1.photos.attach(io: sandra_offer_1_photo_1, filename: "sandra_offer_1_photo_1.jpeg", content_type: "image/jpeg")
sandra_offer_1_photo_2 = URI.open("https://images.unsplash.com/photo-1585960245932-71d47d44159d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
sandra_offer_1.photos.attach(io: sandra_offer_1_photo_2, filename: "sandra_offer_1_photo_2.jpeg", content_type: "image/jpeg")
sandra_offer_1.save!

puts "Created offer '#{sandra_offer_1.title}' of '#{sandra_offer_1.user.first_name}'"

sandra_offer_2 = Offer.new(
  category: "Winter sports",
  condition: "Very good",
  title: "Salomon Super 8 Snowboard - great condition!",
  description: "Hello hello,
I will sadly not make it into the mountains this season, but it would be too much of a shame to hide away my Salomon Super 8.
The board is in fantastic condition as you can see and my absolute favorite. The engineers at Salomon really knocked this one out of the park: It has a Backseat Camber to give you more control and improve flotation in deeper snow, as well as a Quadratic Sidecut.
It is so snappy, especially in deeper snow, you will fall in love, I can guarantee you that much.
Please do not take it into a snow park though and don't do any grinding with it - it wont't be fun because of the camber anyhow and will just ruin the board :D",
  street: "Landwehrstraße",
  house_no: "46",
  zip_code: "80336",
  city: "München",
  country: "DE",
  compensation_type: "Price per day",
  compensation_value: "40",
  user_id: sandra.id
)
sandra_offer_2_photo_1 = URI.open("https://images.unsplash.com/photo-1601376532221-c81f521d4cea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2775&q=80")
sandra_offer_2.photos.attach(io: sandra_offer_2_photo_1, filename: "sandra_offer_2_photo_1.jpeg", content_type: "image/jpeg")
sandra_offer_2_photo_2 = URI.open("https://images.unsplash.com/photo-1518085050105-3c33befa5442?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
sandra_offer_2.photos.attach(io: sandra_offer_2_photo_2, filename: "sandra_offer_2_photo_2.jpeg", content_type: "image/jpeg")
sandra_offer_2_photo_3 = URI.open("https://images.unsplash.com/photo-1418662589339-364ad47f98a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1345&q=80")
sandra_offer_2.photos.attach(io: sandra_offer_2_photo_3, filename: "sandra_offer_2_photo_3.jpeg", content_type: "image/jpeg")
sandra_offer_2_photo_4 = URI.open("https://images.unsplash.com/photo-1488580923008-6f98dfbd7a25?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
sandra_offer_2.photos.attach(io: sandra_offer_2_photo_4, filename: "sandra_offer_2_photo_4.jpeg", content_type: "image/jpeg")
sandra_offer_2_photo_5 = URI.open("https://images.unsplash.com/photo-1612450622817-e9a07fc6a3cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80")
sandra_offer_2.photos.attach(io: sandra_offer_2_photo_5, filename: "sandra_offer_2_photo_5.jpeg", content_type: "image/jpeg")
sandra_offer_2.save!

puts "Created offer '#{sandra_offer_2.title}' of '#{sandra_offer_2.user.first_name}'"

sandra_offer_3 = Offer.new(
  category: "Extreme and fun sport",
  condition: "Very good",
  title: "Skydiving helmet",
  description: "Hey hey,
I will sadly not be able to go skydiving this season but since I see way too many people in extreme sports not wearing helmets, I still wanted to give you the chance to try out my Cookie G3. It also suits itself for other activities such as downhill longboarding and the such.
It has never seen a major crash (knock on wood) but has some light marks and a scratch down at the right side of the visor, but nothing too much out of the ordinary.
Have fun! :)",
  street: "Sprengenöd",
  house_no: "1",
  zip_code: "82547",
  city: "Eurasburg",
  country: "DE",
  compensation_type: "Price per day",
  compensation_value: "40",
  user_id: sandra.id
)
sandra_offer_3_photo_1 = URI.open("https://images.unsplash.com/photo-1586423702505-b13505519074?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
sandra_offer_3.photos.attach(io: sandra_offer_3_photo_1, filename: "sandra_offer_3_photo_1.jpeg", content_type: "image/jpeg")
sandra_offer_3.save!

puts "Created offer '#{sandra_offer_3.title}' of '#{sandra_offer_3.user.first_name}'"

puts "** Creating reviews **"

chrissie_offer_1_review_1 = Review.new(
  rating: 5,
  content: "I'm not one to write reviews, but I had to this time. Chrissie is the loveliest person ever, she brought the red canoe to my home free-of-charge. She showed me how to use it. And she's a plain awesome human being!",
  user_id: chrissie.id,
  offer_id: 1,
  author_id: 3
)

chrissie_offer_1_review_1.save!

puts "Created review 1 for '#{chrissie_offer_1.title}'"

chrissie_offer_1_review_2 = Review.new(
  rating: 5,
  content: "What do you do when you have friends over in Berlin during summer? Well, to the lakes you go! Chrissie's red canoe was all we needed to have a fun afternoon. Thx!",
  user_id: chrissie.id,
  offer_id: 1,
  author_id: 4
)

chrissie_offer_1_review_2.save!

puts "Created review 2 for '#{chrissie_offer_1.title}'"

chrissie_offer_2_review_1 = Review.new(
  rating: 5,
  content: "The bikes works perfectly, got nothing to complain about! Chrissie was relaxed as usual and even gave me another day with the bike for free. 5/5 would rent again",
  user_id: chrissie.id,
  offer_id: 2,
  author_id: 4
)

chrissie_offer_2_review_1.save!

puts "Created review 1 for '#{chrissie_offer_2.title}'"

chrissie_offer_2_review_2 = Review.new(
  rating: 4,
  content: "I do identify as a hipster and my friends say the same about me. Therefore Chrissie's Great Hipster Bike fulfilled all my needs. A bit pricy though for a day.",
  user_id: chrissie.id,
  offer_id: 2,
  author_id: 3
)

chrissie_offer_2_review_2.save!

puts "Created review 2 for '#{chrissie_offer_2.title}'"

chrissie_offer_3_review_1 = Review.new(
  rating: 5,
  content: "Wow a free snowboard! That's exactly what I needed to hit the slopes here in Berlin. The right bind is a bit janky as Chrissie points out, but I had a great time still!",
  user_id: chrissie.id,
  offer_id: 3,
  author_id: 4
)

chrissie_offer_3_review_1.save!

puts "Created review 1 for '#{chrissie_offer_3.title}'"

chrissie_offer_3_review_2 = Review.new(
  rating: 3,
  content: "Why does this skateboard not have any wheels??! I tried to skate in the park but it just wouldn't work??! People looked at me like I was an idiot, but it's not my fault??!",
  user_id: chrissie.id,
  offer_id: 3,
  author_id: 3
)

chrissie_offer_3_review_2.save!

puts "Created review 2 for '#{chrissie_offer_3.title}'"

juergen_offer_1_review_1 = Review.new(
  rating: 5,
  content: "The Trio Rex is state-of-the-art and I didn't expect to find it in Berlin tbh, as it's used for heavy-duty fishing in deeper waters. What a find!",
  user_id: juergen.id,
  offer_id: 4,
  author_id: 4
)

juergen_offer_1_review_1.save!

puts "Created review 1 for '#{juergen_offer_1.title}'"

juergen_offer_1_review_2 = Review.new(
  rating: 5,
  content: "Juergen is a really forward-coming type, he saved me a lot of time picking up the rod by bringing it to our fishing spot himself!",
  user_id: juergen.id,
  offer_id: 4,
  author_id: 3
)

juergen_offer_1_review_2.save!

puts "Created review 2 for '#{juergen_offer_1.title}'"

juergen_offer_2_review_1 = Review.new(
  rating: 5,
  content: "What a great tent for the price of a sixpack of beers! Mr. Dose stayed with us and drank them with us. What a chill guy, what a great time!",
  user_id: juergen.id,
  offer_id: 5,
  author_id: 4
)

juergen_offer_2_review_1.save!

puts "Created review 1 for '#{juergen_offer_2.title}'"

juergen_offer_2_review_2 = Review.new(
  rating: 5,
  content: "Mr. Dose is a legend: We were tenting near Hamburg and the tent ripped :o But Mr. Dose to the rescue: He brought us another one in the middle of the night!",
  user_id: juergen.id,
  offer_id: 5,
  author_id: 3
)

juergen_offer_2_review_2.save!

puts "Created review 2 for '#{juergen_offer_2.title}'"

juergen_offer_3_review_1 = Review.new(
  rating: 4,
  content: "Not the greatest condition really, but did its job for the mild waves I faced. Price is good though and Mr. Dose is very kind!",
  user_id: juergen.id,
  offer_id: 6,
  author_id: 4
)

juergen_offer_3_review_1.save!

puts "Created review 1 for '#{juergen_offer_3.title}'"

juergen_offer_3_review_2 = Review.new(
  rating: 5,
  content: "I actually just needed the board for a photoshoot, it's not easy to get by a surfboard on the fly. The used look was exactly what I was aiming for",
  user_id: juergen.id,
  offer_id: 6,
  author_id: 3
)

juergen_offer_3_review_2.save!

puts "Created review 2 for '#{juergen_offer_3.title}'"

juergen_offer_4_review_1 = Review.new(
  rating: 5,
  content: "Amazing! Usually you'd pay 100 EUR+ a day for this! Mr. Dose is such a good person, and he gives you a good instruction to the intricacies of this high-end windsurf.",
  user_id: juergen.id,
  offer_id: 7,
  author_id: 4
)

juergen_offer_4_review_1.save!

puts "Created review 1 for '#{juergen_offer_4.title}'"

juergen_offer_4_review_2 = Review.new(
  rating: 5,
  content: "The Windsurf is amazing. Htting the waters with the Manic simply is a feeling out of this world! Thank you Mr. Dose <3",
  user_id: juergen.id,
  offer_id: 7,
  author_id: 3
)

juergen_offer_4_review_2.save!

puts "Created review 2 for '#{juergen_offer_4.title}'"

julian_offer_1_review_1 = Review.new(
  rating: 5,
  content: "Julian is a very good guide for the area. We invited him to join for the day on the sailing boat. He really doesn't do this for money, but for fun.",
  user_id: julian.id,
  offer_id: 8,
  author_id: 4
)

julian_offer_1_review_1.save!

puts "Created review 1 for '#{julian_offer_1.title}'"

julian_offer_1_review_2 = Review.new(
  rating: 5,
  content: "Rügen is a beautiful area, and Julian's yacht is the perfect vehicle to explore its shores! Thank you again, Julian, for being such a sport and forgiving me for breaking a window..",
  user_id: julian.id,
  offer_id: 8,
  author_id: 2
)

julian_offer_1_review_2.save!

puts "Created review 2 for '#{julian_offer_1.title}'"

julian_offer_2_review_1 = Review.new(
  rating: 5,
  content: "I yearned to hit the links since I moved to Germany a couple of years ago. Somehow I never found the time. After a day on Julian's yacht, he was kind enough to lend me his Callaway drive!",
  user_id: julian.id,
  offer_id: 9,
  author_id: 4
)

julian_offer_2_review_1.save!

puts "Created review 1 for '#{julian_offer_2.title}'"

julian_offer_2_review_2 = Review.new(
  rating: 5,
  content: "I'm quite the beginner when it comes to Golf. Julian actually used to be a pro and gave me a free lesson along with the club! 10/5",
  user_id: julian.id,
  offer_id: 9,
  author_id: 2
)

julian_offer_2_review_2.save!

puts "Created review 2 for '#{julian_offer_2.title}'"

sandra_offer_1_review_1 = Review.new(
  rating: 5,
  content: "It's been years since I was on skates! And Sandra knew the perfect occasion to try them out: An 80's skating party. How cool is that?",
  user_id: sandra.id,
  offer_id: 10,
  author_id: 1
)

sandra_offer_1_review_1.save!

puts "Created review 1 for '#{sandra_offer_1.title}'"

sandra_offer_1_review_2 = Review.new(
  rating: 5,
  content: "Me feet aren't that big and Sandra's skates were a perfect fit. It's just great skating in beautiful Munich! Thx Sandra!",
  user_id: sandra.id,
  offer_id: 10,
  author_id: 2
)

sandra_offer_1_review_2.save!

puts "Created review 2 for '#{sandra_offer_1.title}'"

sandra_offer_2_review_1 = Review.new(
  rating: 5,
  content: "What a great board! Mine is a bit old already and I wanted to try a Salomon for some time now. And wow, what a difference it is!",
  user_id: sandra.id,
  offer_id: 11,
  author_id: 1
)

sandra_offer_2_review_1.save!

puts "Created review 1 for '#{sandra_offer_2.title}'"

sandra_offer_2_review_2 = Review.new(
  rating: 5,
  content: "Because we had a trip planned outside of ski resorts, it was perfect to rent a snowboard here in Berlin. The snowboard is super fast and in great condition.",
  user_id: sandra.id,
  offer_id: 11,
  author_id: 3
)

sandra_offer_2_review_2.save!

puts "Created review 2 for '#{sandra_offer_2.title}'"

sandra_offer_3_review_1 = Review.new(
  rating: 5,
  content: "You really want to use a helmet when skydiving. Not having your eyes tear up from the wind makes the experience so much more pleasurable.",
  user_id: sandra.id,
  offer_id: 12,
  author_id: 1
)

sandra_offer_3_review_1.save!

puts "Created review 1 for '#{sandra_offer_3.title}'"

sandra_offer_3_review_2 = Review.new(
  rating: 5,
  content: "Thanks again, Sandra, for giving me an extra day with the helmet! The second day at the skydiving school wouldn't have been the same without your helmet!",
  user_id: sandra.id,
  offer_id: 12,
  author_id: 3
)

sandra_offer_3_review_2.save!

puts "Created review 2 for '#{sandra_offer_3.title}'"
