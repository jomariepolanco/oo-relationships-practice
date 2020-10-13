class Guest
    attr_accessor :name, :trip

    @@all = [] 

    def initialize(name)
        @name = name  
        @@all << self 
    end

    def self.all
        @@all 
    end

    def listings
       trips.map {|trip| trip.listing}
        # Listing.all.select {|listing| listing.guest == self}
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def trip_count 
        #number of trips taken
        trips.count 
    end

    def self.pro_traveller
        self.all.select {|guest| guest.trip_count > 1}
        #Trip.all.select {|trip| trip.guest.count > 1}
    end

    def self.find_all_by_name(name)
        self.all.select {|guest| guest.name == name}
    end
end #end of Guest class