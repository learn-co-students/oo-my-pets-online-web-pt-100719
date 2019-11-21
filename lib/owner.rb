class Owner
  attr_accessor :pets 
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    #@species = species
  end 
end