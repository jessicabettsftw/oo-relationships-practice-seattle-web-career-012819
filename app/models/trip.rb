class Trip
  attr_reader :name, :listing

  @@all =[]

  def initialize(name, listing)
    @name = name
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end
end
