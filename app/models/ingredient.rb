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

  def self.find_all_by_name(name)
    self.all.select do |ingredient|
      ingredient.name.downcase.include? name.downcase
    end
  end

  def bakery
    @dessert.bakery
  end

end
