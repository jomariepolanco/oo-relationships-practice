class Trip

    attr_accessor :guest, :listing

    @@all = [] 

    def initialize(listing, guest)
        @guest = guest 
        @listing = listing
        @@all << self  
    end

    def self.all
        @@all 
    end

    def listing
        Listing.all.find {|list| list.trip == self}
    end

    def guest
        Guest.all.find {|guest| guest.trip == self}
    end
end #end of Trip class