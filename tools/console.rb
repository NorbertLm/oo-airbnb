require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


kat = Guest.new("Kat")
ez = Guest.new("Ez")
zoe = Guest.new("Zoe")

seatle = Listing.new("Seattle")
philly = Listing.new("Philly")
atlanta = Listing.new("Atlanta")

trip1 = Trip.new(kat, philly, 2)
trip2= Trip.new(ez, atlanta, 1)
trip3= Trip.new(kat, atlanta, 5)
trip4 = Trip.new(zoe, philly, 6)
trip5 = Trip.new(zoe, seatle, 3)
trip6 = Trip.new(zoe, atlanta, 3)



# Put your variables here~!
binding.pry
