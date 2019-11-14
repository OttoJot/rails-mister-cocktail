require 'faker'

puts "Clearing ingredients db"
Ingredient.destroy_all
puts "creating"
10.times do
  ingredient = Ingredient.new(
    name: Faker::Food.ingredient
  )
  puts ingredient.name
  ingredient.save
end
puts "done with ingredients"



puts "Clearing cocktails db"
Cocktail.destroy_all


puts "creating"
10.times do
  cocktail = Cocktail.new(
    name: Faker::Food.fruits
  )
  cocktail.save
end
puts "done with cocktails"


"Clearing doses db"
Dose.destroy_all

puts "creating"

10.times do
  dose = Dose.new(
    description: Faker::Food.measurement
  )
  dose.save!
  puts dose.description
end
puts "done with doses"


























