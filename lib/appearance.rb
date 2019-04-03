class Appearance
  @@all = []
  attr_reader :movie, :avenger

  def initialize(movie, avenger)
    @avenger = avenger
    @movie = movie
    @@all << self
  end

  def self.all
    @@all
  end
end
