class Meal

	attr_accessor :food, :name

	def initialize(name)
		@name = name
		@food = []
		@portion_sizes = []
	end

	def add_food(new_food, portion_size)
		food.push(new_food)
		@portion_sizes.push(portion_size)
	end

	def calories()
		total_calories = 0
		food.each_with_index do |food_item, i|
			total_calories += food_item.total_calories(@portion_sizes[i])
		end

		total_calories
	end

	def to_s
		str = name + "\n"
		food.each_with_index do |food_item, i|
			str += food_item.to_s + " | #{@portion_sizes[i]} \n"
		end
		str

	end
end