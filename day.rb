

class Day

	attr_accessor :meals, :calorie_goal

	def initialize(calorie_goal)
		@calorie_goal = calorie_goal
		@meals = []
	end

	def add_meal(new_meal)
		meals.push(new_meal)
	end

	def calories()
		total_calories = 0
		meals.each do |meal|
			total_calories += meal.calories
		end
		total_calories
	end

	def met_goal?
		calories() <= calorie_goal
	end


end

