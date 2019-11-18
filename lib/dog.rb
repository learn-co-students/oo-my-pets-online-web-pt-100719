class Dog

  attr_reader :name # Dog cannot change its name
  attr_accessor :owner, :mood
  @@dogs = [] # Store all instances of the Dog class

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@dogs << self # Saves all instances of the Dog class
  end

  # Returns all instances of the Dog class
  def self.all
    @@dogs
  end

end
