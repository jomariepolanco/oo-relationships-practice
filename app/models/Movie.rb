class Movie

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all 
    end

    def characters
        MovieCast.all.select {|cast| cast.movie == self}.map {|cast| cast.character}
    end

    
end #end of movie class