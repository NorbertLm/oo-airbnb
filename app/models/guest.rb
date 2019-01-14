class Guest

    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def listings
        Listing.all.select { |list|
            list.guests.include? self
        }
    end

    def trips
        Trip.all.select { |trip|
            trip.guest == self
        }
    end

    def trip_count
        self.trips.size
    end

    def self.pro_traveler
        hash = Hash.new(0)
        
        Trip.all.each { |trip|
            hash[trip] += 1
        }

        arr = []

        hash.each { |key, value|
            if value > 1
                arr << key
            end
        }

        arr

    end

    def self.find_all_by_name(guest_name)
        self.all.select { |guest| 
            guest.name == guest_name
        }
    end



end
