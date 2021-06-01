# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning the database"

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
sandra_avatar = URI.open("https://images.unsplash.com/photo-1531944342704-649d95a5838d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
sandra.photo.attach(io: sandra_avatar, filename: "sandra_avatar.jpeg", content_type: "image/jpeg")
sandra.save!

puts "Created user: #{sandra.first_name}"

puts "** Creating offers **"

chrissie_offer_1 = Offer.new(
  category: "",
  condition: ,
  description: ,
  location: ,
  compensation_type: ,
  compensation_value:
)

