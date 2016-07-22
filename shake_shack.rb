class MilkShake
	attr_reader :base_price, :ingredients
	def initialize
		@base_price = 3
		@ingredients = []	
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		total_price_of_milkshake
	end
end



class Ingredient
	attr_reader :name, :price 
	def initialize(name, price)
		@name = name
		@price = price
	end
end

#create a ShakeShop class

class ShakeShop
#create an empty list where we can add milkshake
	def initialize
		@list = []
	end
#create a method to add milkshake on that list
	def add_my_milkshake(milkshake)
		@list.push(milkshake)
	end
#total to pay is included in the list of shakes.take one element of 
	def check_out
		total_to_pay = 0
		@list.each do |milkshake|  
			total_to_pay += milkshake.price_of_milkshake
		end
		total_to_pay
	end
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("banana", 2)
chocolate_chips = Ingredient.new("chocolate chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake

detox_milkshake = MilkShake.new
green_stuff = Ingredient.new("green stuff", 2)
air = Ingredient.new("air", 3)
detox_milkshake.add_ingredient(green_stuff)
detox_milkshake.add_ingredient(air)

puts detox_milkshake.price_of_milkshake

naughty_milkshake = MilkShake.new
strawberries = Ingredient.new("strawberries", 4)
whipcream = Ingredient.new("whipcream", 3)
naughty_milkshake.add_ingredient(banana)
naughty_milkshake.add_ingredient(strawberries)
naughty_milkshake.add_ingredient(whipcream)

puts naughty_milkshake.price_of_milkshake


laetitia = ShakeShop.new
laetitia.add_my_milkshake(detox_milkshake)
laetitia.add_my_milkshake(nizars_milkshake)
laetitia.add_my_milkshake(naughty_milkshake)
puts "Total to pay is #{laetitia.check_out}"


