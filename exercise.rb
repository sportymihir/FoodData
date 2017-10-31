class Exercise

	

	def initialize()
		@activities = []
	end

	def add_exercise(new_exercise)
		@activities.push(new_exercise)
	end

	def total_calories()
		total_calories = 0
		@activities.each do |activity_item|
			total_calories += activity_item.calories
		end
		total_calories
	end

		
end