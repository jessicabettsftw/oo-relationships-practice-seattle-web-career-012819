class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def drivers
    my_rides = rides
    my_rides.map do |ride|
      ride.driver
    end
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def total_distance
    my_rides = rides
    total = 0
    my_rides.collect do |ride|
      total += ride.distance
    end
    total
  end

  def self.premium_members
    self.all.select do |passenger|
      passenger.total_distance > 100
    end
  end

end
