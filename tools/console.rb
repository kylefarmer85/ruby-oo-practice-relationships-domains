require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


kyle = Guest.new("Kyle")
blake = Guest.new("Blake")
vic = Guest.new("Vic")

chicago = Listing.new("Chicago")
new_york = Listing.new("New York")
la = Listing.new("LA")

trip1 = Trip.new(kyle, new_york)
trip2 = Trip.new(blake, la)
trip3 = Trip.new(vic, chicago)
trip4 = Trip.new(kyle, la)
trip5 = Trip.new(vic, new_york)
trip6 = Trip.new(blake, chicago)
trip7 = Trip.new(kyle, new_york)

# TESTS
# Guest
kyle.listings
vic.trips
blake.trip_count
Guest.pro_traveller
Guest.find_all_by_name("Kyle")

# Listing
chicago.guests
new_york.trips
la.trip_count
Listing.find_by_city("Chicago")
Listing.most_popular






Pry.start
