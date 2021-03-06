class Listing

    attr_reader :type 
    attr_accessor :city, :trip

    @@all = []

    def initialize(city, type)
        @city = city  
        @type = type
        #@trip = trip
        @@all << self  
    end

    def self.all
        @@all 
    end

    def guests
        trips.map {|trip| trip.guest}
        #Guest.all.select {|guest| guest.listing == self}
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        trips.count 
    end

    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        self.all.max_by {|listing| listing.trip_count}
    end
end #end of Listing class 