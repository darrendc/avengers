class Movie
  def initialize(title)
    @title = title
  end

  # inifinity.appearances
  def appearances
    Appearance.all.select do |appearance|
      appearance.movie == self
    end
  end

  def avengers
    appearances.map do |appearance|
      appearance.avenger
    end
  end
end
