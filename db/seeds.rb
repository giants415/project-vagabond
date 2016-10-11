# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all
City.create({city_name: "San Francisco", city_state: "California", city_image: "sf-image.jpg"})
City.create({city_name: "Gibraltar", city_state: "Gibraltar", city_image: "gibraltar-image.jpg"})
City.create({city_name: "London", city_state: "United Kingdom", city_image: "london-image.jpg"})
