require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jessica = Guest.new("Jessica")
dena = Guest.new("Dena")

lv = Listing.new("Las Vegas")
ny = Listing.new("New York")

bffTrip1 = Trip.new(jessica, lv)
bffTrip2 = Trip.new(dena, lv)
denaTrip = Trip.new(dena, ny)

###### TEST LISTING #######

#Runs listing.guests
#puts lv.guests

#Runs listing.trips
#puts lv.trips

#Runs listing.trip_count
#puts lv.trip_count

#test
#puts Listing.find_all_by_city(lv.city)

#test
#puts Listing.most_popular.city

###### TEST GUEST #######

#Runs guest.trips
#puts jessica.trips

#Runs guest.listings
#puts dena.listings

#Runs guest.trip_count
#puts jessica.trip_count

#TEST
#puts Guest.pro_traveller

#test
#puts Guest.find_all_by_name("jessica")
