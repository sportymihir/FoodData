require './food'
require './meal'
require './day'
require './month'
require './exercise'
require './activity'

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

roast_beef_sandwich = Food.new("Roast Beef Sandwich", "1 sandwich", 345)
salad = Food.new("Salad", "1 cup", 11)
salad_dressing = Food.new("Salad Dressing", "1 tablespoon", 145)
chicken_soup = Food.new("Chicken Soup", "1 cup", 75)
sweet_tea = Food.new("Sweet Tea", "8 oz", 100)

lunch = Meal.new("Lunch")
lunch.add_food(roast_beef_sandwich, 1)
lunch.add_food(salad, 2)
lunch.add_food(salad_dressing, 3)
lunch.add_food(chicken_soup, 1.5)
lunch.add_food(sweet_tea, 2)

broccoli = Food.new("Broccoli", "1 cup", 40)
steak = Food.new("Steak", "5 oz", 240)
mashed_potatoes = Food.new("Mashed Potatoes", "1 cup", 255)
gravy = Food.new("Gravy", "1 cup", 125)
rice = Food.new("Rice", "1 cup", 230)
ice_cream = Food.new("Ice Cream", "1 cup", 270)
soda = Food.new("soda", "12 oz", 180)

dinner = Meal.new("Dinner")
dinner.add_food(broccoli, 1)
dinner.add_food(steak, 1.6)
dinner.add_food(mashed_potatoes, 1.5)
dinner.add_food(gravy, 0.25)
dinner.add_food(rice, 1)
dinner.add_food(ice_cream, 1)
dinner.add_food(soda, 1)

chips = Food.new("Chips", "10 chips", 100)
fruit_snacks = Food.new("Fruit Snacks", "1 bag", 89)
trail_mix = Food.new("Trail Mix", "1 cup", 693)

snacks = Meal.new("Snacks")
snacks.add_food(chips, 3)
snacks.add_food(fruit_snacks, 1)
snacks.add_food(trail_mix, 0.2)

day1 = Day.new(2000)
day1.add_meal(breakfast)
day1.add_meal(lunch)
day1.add_meal(dinner)
day1.add_meal(snacks)

month1 = Month.new(day1.calories, 2000)

puts "Did he reach his total calorie goal?"
puts day1.calories
puts day1.met_goal?
puts "Weight Change in a month"
puts month1.change_in_weight

jogging = Activity.new("Jogging", 300, 0.5)
yoga = Activity.new("Yoga", 240, 1.0/3)
weightlifting = Activity.new("Weightlifting", 266, 0.75)

exercise1 = Exercise.new()
exercise1.add_exercise(jogging)
exercise1.add_exercise(yoga)
exercise1.add_exercise(weightlifting)
calorie_goal = exercise1.total_calories + 2000

day2 = Day.new(calorie_goal)
day2.add_meal(breakfast)
day2.add_meal(lunch)
day2.add_meal(dinner)
day2.add_meal(snacks)

month2 = Month.new(day2.calories, calorie_goal)

puts "Titanic Dan's total calorie goal with exercise is #{calorie_goal}"
puts "Did Titanic Dan meet his total goal with exercise?"
day2_met_goal = day2.met_goal? 
puts day2_met_goal
puts "Weight Change in a month with exercise is"
puts month2.change_in_weight






