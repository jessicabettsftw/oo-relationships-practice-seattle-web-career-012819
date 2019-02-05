class Guest
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    trips_array = trips
    trips_array.map do |trip|
      trip.listing
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    trips.length
  end

  def self.pro_traveller
    guest_hash = Hash.new(0)
    self.all.select do |guest|
      guest.trip_count > 1
    end
  end

  def self.find_all_by_name(name)
    self.all.select do |guest|
      guest.name.downcase == name.downcase
    end
  end
end
