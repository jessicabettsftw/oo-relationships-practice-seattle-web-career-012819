class Bakery
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    my_desserts = desserts
    my_desserts.each.collect do |dessert|
      dessert.ingredients
    end
  end

  def desserts
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def average_calories
    total = 0
    ingredients.flatten.each do |ingredient|
      total += ingredient.calorie_count
    end

    total/desserts.length
  end

  def shopping_list
    my_ingredients = ingredients.flatten
    my_ingredients.map do |ingredient|
      ingredient.name
    end
  end


end
