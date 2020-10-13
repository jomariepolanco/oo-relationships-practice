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

    def self.most_actors
        self.all.max_by {|movie| movie.actors.count}
    end

    def actors
        characters.map {|character| character.actor}.uniq
    end

end #end of movie class