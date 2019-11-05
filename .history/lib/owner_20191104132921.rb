require 'pry'
require 'cat.rb'
class Owner
  attr_reader :name
  def initialize(name, species)
    @name = name
    @species = species
  end

  def say_species
    p
  end
end