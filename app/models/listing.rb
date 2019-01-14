class Listing

    attr_reader :city
    @@all = []


    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        guests =[]
        
        Trip.all.each { |trip|
            if trip.listing == self
                guests << trip.guest
            end
        }

        guests
    end

    def trips
        Trip.all.select { |trip|
            trip.listing == self
        }
    end

    def trip_count
        self.trips.size
    end

    def self.find_all_by_city(city_name)
        self.all.select{ |listing| listing.city == city_name}
    end

    def self.most_popular
        hash = Hash.new(0)

        self.all.each { |listing|
            hash[listing] += listing.trip_count
        } 

        hash.select {|k,v| v == hash.values.max }.keys[0]
    end

end
