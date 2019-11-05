require 'pry'
require 'cat.rb'
class Owner
  attr_reader :name
  def initialize(species = "human")
    @name = name
    @species = species
  end

  def say_species
    p
  end
end