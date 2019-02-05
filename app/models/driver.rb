class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    my_rides = rides
    my_rides.map do |ride|
      ride.passenger
    end
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def self.mileage_cap(distance)
    driver_hash = Hash.new(0)
    self.all.each do |driver|
      driver.rides.each do |ride|
        driver_hash[driver] += ride.distance
      end
    end
    driver_hash.select do |driver|
      driver_hash[driver] > distance
    end
  end

end
