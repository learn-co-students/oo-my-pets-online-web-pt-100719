class Owner
  attr_accessor :species
  attr_reader :name
  def initialize(name, species = "human")
    @name = name
    @species = species
  end
end