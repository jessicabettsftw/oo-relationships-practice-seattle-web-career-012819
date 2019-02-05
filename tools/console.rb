require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jPalace = Bakery.new("Jessica's Sugar Palace")

cupcake = Dessert.new("cupcake", jPalace)
pie = Dessert.new("pie", jPalace)

sugar = Ingredient.new("Sugar", 160, cupcake)
brownSugar = Ingredient.new("Brown Sugar", 110, cupcake)
fruit = Ingredient.new("Fruit", 70, pie)
crust = Ingredient.new("Crust", 95, pie)

#check to see if Ingredient.find_all_by_name works
brownIngredients = Ingredient.find_all_by_name("brown")
#puts brownIngredients[0].name

#checks to see if ingredient.dessert runs
#puts sugar.dessert.name

#checks to see if ingredient.bakery runs
#puts sugar.bakery

#checks to see if dessert.ingredients runs
#puts cupcake.ingredients[1].name

#check to see if dessert.calories runs
#puts cupcake.calories

#checks to see is dessert.bakery runs
#puts cupcake.bakery.name

#checks to see if bakery.desserts works
#puts jPalace.desserts[1].name

#checks to see if bakery.ingredients works
#puts jPalace.ingredients

#checks to see if bakery.average_calories works
#puts jPalace.average_calories

#checks to see if shopping list runs
puts jPalace.shopping_list

#Pry.start
