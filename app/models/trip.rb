class Trip

    attr_reader :guest, :listing
    @@all = []

    def initialize(guest, listing, duration)
        @guest = guest
        @listing = listing
        @duration = duration
        
        @@all << self
    end

    def self.all
        @@all
    end

end
