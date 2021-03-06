require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

################################### - Airbnb
london_apt = Listing.new("London", "apartment")
paris_apt = Listing.new("Paris", "apartment")
milan_apt = Listing.new("Milan", "apartment")
london_villa = Listing.new("London", "villa")
paris_villa = Listing.new("Paris", "villa")
milan_villa = Listing.new("Milan", "villa")

kim = Guest.new("Kim")
kourtney = Guest.new("Kourtney")
khloe = Guest.new("Khloe")

trip1 = Trip.new(london_apt, kourtney)
trip2 = Trip.new(paris_apt, kim)
trip3 = Trip.new(milan_apt, khloe)
trip4 = Trip.new(milan_villa, kim)
trip5 = Trip.new(london_villa, kourtney)
trip6 = Trip.new(paris_villa, khloe)
trip7 = Trip.new(london_apt, khloe)
############################################# - BAKERY

cupcake = Dessert.new("Rainbow cupcake", "cupcake", 250)
cake = Dessert.new("Chocolate Cake", "cake", 675)
brownie = Dessert.new("Brownie", "brownies", 550)
blondie = Dessert.new("Blonde Brownie", "brownies")
cake = Dessert.new("Funfetti Cake", "cake", 220)


sugar = Ingredient.new("sugar", 50)
chocolate = Ingredient.new("chocolate", 125)
frosting = Ingredient.new("frosting", 500)
oil = Ingredient.new("oil", 70)

cake_place = Bakery.new(sugar, cake)
brownie_yum = Bakery.new(chocolate, brownie)
cupcake_palace = Bakery.new(frosting, cake)


########## IMDB
movie1 = Movie.new("The Joker")
movie2 = Movie.new("Taxi")
movie3 = Movie.new("The Notebook")

actor1 = Actor.new("Rachel")
actor2 = Actor.new("matt")
actor3 = Actor.new("doe")

char1 = Character.new("billy", actor1)
char2 = Character.new("jack", actor2)
char3 = Character.new("jane", actor3)
char4 = Character.new("estivez", actor1)
char5 = Character.new("gonzo", actor2)

mc1 = MovieCast.new(char1, movie1)
mc2 = MovieCast.new(char2, movie2)
mc3 = MovieCast.new(char1, movie3)
mc4 = MovieCast.new(char3, movie1)
mc5 = MovieCast.new(char5, movie1)



binding.pry
0