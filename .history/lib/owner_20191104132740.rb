require 'pry'
require 'cat.rb'
class Owner
  attr_reader :name
  def initialize(name, species = "human")
    @name = name
    @species = species
  end
end