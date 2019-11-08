class Cat
 attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name, mood = "nervous", owner)
    @mood = mood
    @name = name
    @owner = owner
  end
  
  #Class Methods
  
end
