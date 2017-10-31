class Activity
	attr_accessor :name, :calories_per_hour, :hours

	def initialize(name, calories_per_hour, hours)
		@name = name
		@calories_per_hour = calories_per_hour
		@hours = hours

	end

	def calories()
		calories_per_hour * hours
	end


end