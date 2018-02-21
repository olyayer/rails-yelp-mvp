# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
# "chinese", "italian", "japanese", "french", "belgian"]

puts "Creating restaurants..."
restaurants_attributes = [
  {
    name: 'LaFa',
    address: 'Amendoeiras, 2',
    phone_number: '637-288-234',
    category: "chinese",

    },
  {
    name: 'Maria',
    address: 'LaPlaia, 5',
    phone_number: '637-757-234',
    category: "italian",

    },
    {
    name: "Eurico",
    address: "5 de Outubro, 23",
    phone_number: "637-757-000",
    category: "belgian",

    },
    {
    name: "Tokio",
    address: "27 Maestro st, 23",
    phone_number: "637-222-536",
    category: "japanese",

    },
    {
    name: "FanFan",
    address: "9 Negage, 23",
    phone_number: "637-111-000",
    category: "french",

    }
  ]
  Restaurant.create!(restaurants_attributes)
  puts "Finished!"
