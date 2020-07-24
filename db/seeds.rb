# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'rest-client'
# asos = RestClient.get('https://asos2.p.rapidapi.com/products/v2/list?country=US&currency=USD&sort=freshness&lang=en-US&sizeSchema=US&offset=0&categoryId=4209&limit=48&store=US')
# asos_array = JSON.parse(asos)["results"]
# asos_array.each do |clothe|
#     Clothe.create(
#         name: clothe["name"]
#     )
# end

christa = User.create(name: "Christa", size: "XS", bio: "create York City Born and Raised. I love a mix of European style with streetwear!")
brandon = User.create(name: "Brandon", size: "M", bio: "I love fashion!")
hailey = User.create(name: "Hailey", size: "S", bio: "I love a mix of boho with classy. It's perfect for every occassion.")
ivan = User.create(name: "Ivan", size: "L", bio: "I honestly don't really care much about what I wear. It's just not what preoccupies me.")
phil = User.create(name: "Phil", size: "XL", bio: "My style has changed a lot over the years, but I think I've finally found myself.")
claudia = User.create(name: "Claudia", size: "M", bio: "I am such a girly girl. I love anything pink!")

striped_top = Clothe.create(name: "Brown & Red Striped T-Shirt", size: "XS", category: "Streetwear")
jeans = Clothe.create(name: "Ripped Denim Blue Jeans", size: "26", category: "Denim")
blazer = Clothe.create(name: "Black Blazer", size: "M", category: "Business")
slacks = Clothe.create(name: "Khaki Slacks", size: "L", category: "Business Casual")
dress = Clothe.create(name: "Pink Skater Dress", size: "M", category: "Dress")
leggings = Clothe.create(name: "Lululemon Black Leggings", size: "00", category: "Athletic")
sports_bra = Clothe.create(name: "Lululemon Black Sports Bra", size: "2", category: "Athletic")

monday_athleisure = Outfit.create(name: "My Workout Outfit", user: christa, category: "Athleisure", weekday: "Monday")
monday_athleisure = Outfit.create(name: "My Casual Outfit", user: claudia, category: "Casual", weekday: "Friday")

OutfitClothe.create(clothe: leggings, outfit: monday_athleisure)
OutfitClothe.create(clothe: sports_bra, outfit: monday_athleisure)