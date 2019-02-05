require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jessPass = Passenger.new("Jessica")
devanPass = Passenger.new("Devan")

jojoDriver = Driver.new("Jo Jo")
cassyDriver = Driver.new("Cassy")

leaveSpunkMonkey = Ride.new(jojoDriver, jessPass, 9.74)
leaveOddFellas = Ride.new(cassyDriver, jessPass, 10.35)
toSeattle = Ride.new(jojoDriver, devanPass, 167.80)

#check to see if creating classes works
#puts leaveSpunkMonkey.distance

# puts jessPass.drivers
#
# puts jessPass.rides
#
# puts jessPass.total_distance

#puts Passenger.premium_members[0].name

# puts jojoDriver.passengers
#
# puts cassyDriver.rides

#puts Driver.mileage_cap(20.1)

#puts Ride.average_distance
