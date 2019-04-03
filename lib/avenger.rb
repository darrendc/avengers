# frozen_string_literal: true

class Avenger
  def initialize(name)
    @name = name
  end

  def powers
    Power.all.select do |power|
      power.avenger == self
    end
  end

  def abilities
    powers.map do |power|
      power.ability
    end
  end

  def appearances
    Appearance.all.select do |appearance|
      appearance.avenger == self
    end
  end

  def movies
    appearances.map do |appearance|
      appearance.movie
    end
  end

  def make_appearance_in(movie)
    Appearance.new(movie, self)
  end
end
