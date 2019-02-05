class Listing
  attr_reader :city

  @@all =[]

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    trips_array = trips
    trips_array.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    self.all.select do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    listing_hash = Hash.new(0)
    self.all.each do |listing|
      listing_hash[listing] += 1
    end
    listing_hash.key((listing_hash.values).max)
  end
end
