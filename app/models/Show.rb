class Show

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
        Showcast.all.select {|cast| cast.show == self}.map {|cast| cast.character}
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.name == self.name}
    end

end #end of show class