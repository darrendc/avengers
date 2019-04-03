require "pry"
require_relative "../lib/avenger.rb"
require_relative "../lib/power.rb"
require_relative "../lib/movie.rb"
require_relative "../lib/appearance.rb"

hulk = Avenger.new("Hulk")
cap = Avenger.new("Captain America")
panther = Avenger.new("Black Panther")
ant = Avenger.new("Ant-Man")
thor = Avenger.new("Thor")

Power.new("super strength", hulk)
Power.new("super strength", cap)
Power.new("super strength", panther)
Power.new("super strength", thor)

Power.new("size manipulation", ant)

Power.new("fly", thor)

infinity = Movie.new("Avengers: Infinity War")
rag = Movie.new("Thor: Ragnarok")
ant_and_wasp = Movie.new("Ant-man and the Wasp")
black_panther = Movie.new("Black Panther")

hulk.make_appearance_in(infinity)
cap.make_appearance_in(infinity)
thor.make_appearance_in(infinity)
panther.make_appearance_in(infinity)

hulk.make_appearance_in(rag)
thor.make_appearance_in(rag)

ant.make_appearance_in(ant_and_wasp)

panther.make_appearance_in(black_panther)

# avenger.appearances should return instances of Appearance class

infinity_appearances = infinity.appearances

hulks_movies = hulk.movies # all Movie Objs that Hulk was in

Pry.start
