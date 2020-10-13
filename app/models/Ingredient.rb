class Ingredient

    attr_accessor :bakeries, :name, :calories 

    @@all = []

    def initialize(name, calories)
        @name = name 
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        bakeries.all.select {|bakery| bakery.dessert}
    end

    def bakeries
        Bakery.all.select {|bakery| bakery.ingredient == self}
    end

    def self.find_all_by_name(ingredient)
        self.all.select {|ingredient| ingredient.name.include? ingredient}
    end

end #end of ingredient class