require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jessPass = Passenger.new("Jessica")

jojoDriver = Driver.new("Jo Jo")

leaveSpunkMonkey = Ride.new(jojoDriver, jessPass, 9.74)

#check to see if creating classes works
puts leaveSpunkMonkey.distance
