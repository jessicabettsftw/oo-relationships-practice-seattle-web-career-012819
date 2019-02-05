class Dessert
  attr_reader :name, :bakery

  @@all =[]

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

  def calories
    my_ingredients = ingredients
    total = 0
    my_ingredients.collect do |ingredient|
      total += ingredient.calorie_count
    end
    total
  end
end
