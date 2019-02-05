class Actor
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_characters
    characters_hash = Hash.new(0)
    Character.all.each do |character|
      characters_hash[character.actor] += 1
    end
    characters_hash.key(characters_hash.values.max)
  end

end
