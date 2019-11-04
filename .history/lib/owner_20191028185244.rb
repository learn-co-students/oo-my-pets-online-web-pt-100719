class Owner
  attr_accessor :name
  def initialize(name, species = "human")
    @name = name
    @species = species
  end
end