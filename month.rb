class Month

	attr_accessor :calories_per_day, :calorie_goal

	def initialize(calories_per_day, calorie_goal)
		@calories_per_day = calories_per_day
		@calorie_goal = calorie_goal
	end

	def change_in_weight()
		change = (calories_per_day - calorie_goal) * 30
		change / 3500
	end



end