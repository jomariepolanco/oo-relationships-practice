class Actor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_characters
        self.all.max_by {|actor| actor.characters.count}
    end

    def characters
        Character.all.select {|char| char.actor == self}
    end

end #Actor