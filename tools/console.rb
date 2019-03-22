require_relative '../config/environment.rb'

restaurant_1 = Restaurant.new("Sally's")
restaurant_2 = Restaurant.new("Adobo")
restaurant_3 = Restaurant.new("Dallas BBQ")


restaurant_1.create_location("NYC", "123 Main St.", 1800)
restaurant_1.create_location("Boston", "555 Pine St.", 1000)

restaurant_2.create_location("Boston", "888 Maple St.", 1500)
restaurant_3.create_location("Austin", "333 Pool St.", 1000)

r4 = Restaurant.new("Floop")
r4.create_location("NYC", "222 Main St.", 1800)
r4.create_location("Boop", "300 Sparta St.", 1000)

binding.pry
#Pry.start
