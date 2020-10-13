class Character

    attr_accessor :name, :actor
    #reader probably?? 

    @@all = [] 

    def initialize(name, actor)
        @name = name 
        @actor = actor 
        @@all << self  
    end

    def self.all
        @@all 
    end

    def movies
        MovieCast.all.select {|cast| cast.character == self}
    end

    def shows
        ShowCast.all.select {|cast| cast.character == self}
    end

    def self.most_appearances
        self.all.max_by do |character|
            character.movies.count + character.shows.count 
        end
        # array of show character's tv shows & movie character's movies
        #returncharacter instance
    end
end #end of character class