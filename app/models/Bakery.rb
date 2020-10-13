class Bakery

    attr_accessor :ingredients, :desserts

    @@all = []

    def initialize(ingredients, dessert)
        @ingredients = ingredients
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.bakery == self}
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def average_calories
        dessert_cal = desserts.map {|dessert| dessert.calories}.inject(:+)
        avg = dessert_cal / desserts.count
        avg  
    end

    def shopping_list
        ingredients.map {|ingredient| ingredient.name}.join(" ")
    end
    
end #end of Bakery class