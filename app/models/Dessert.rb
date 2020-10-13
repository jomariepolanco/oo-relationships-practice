class Dessert 

    attr_accessor :bakery, :name, :type, :calories, :ingredients 

    @@all = []

    def initialize(name, type, calories = 450)
        @name = name
        @type = type 
        @calories = calories 
        @@all << self 
    end

    def self.all
        @@all
    end

    def ingredients
        bakery.map {|bakery| bakery.ingredient}
    end

    def bakery
        Bakery.all.find {|bakery| bakery.dessert == self}
    end

    def calories
        ingredients.map {|ingredient| ingredient.calories}.inject(:+)
    end
end #end of Dessert class