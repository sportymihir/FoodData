require './food'
require './meal'

scrambled_eggs = Food.new("scrambled_eggs", "1 egg", 100)
bacon = Food.new("bacon", "3 Slices", 100)
cereal = Food.new("cereal", "1 oz", 135)

#puts scrambled_eggs

breakfast = Meal.new("breakfast")
breakfast.add_food(scrambled_eggs, 3)
breakfast.add_food(bacon, 2)
breakfast.add_food(Food.new("cereal", "1 oz", 135), 2)

puts breakfast
puts "Breakfast Calories: #{breakfast.calories}"
