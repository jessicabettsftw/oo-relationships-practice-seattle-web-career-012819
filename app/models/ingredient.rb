class Ingredient
  attr_reader :name, :calorie_count, :dessert

  @@all =[]

  def initialize(name, count, dessert)
    @name = name
    @calorie_count = count
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

end
