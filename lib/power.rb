class Power
  @@all = []

  attr_reader :avenger, :ability

  def initialize(ability, avenger)
    @ability = ability
    @avenger = avenger
    @@all << self
  end

  def self.all
    @@all
  end
end
