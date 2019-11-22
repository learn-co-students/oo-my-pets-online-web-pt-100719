require 'values'
class Cat
  attr_accessor :name
  attr_reader :owner
  
  @@all =[]
  
  def initialize(name,owner)
    @name = name
    
    @owner = owner
  end
  
  def owner=(owner)
    @owner = owner
  end
  
  def name(name)
    @name
  end
  
  
  
  
end