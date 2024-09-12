 class Cat

  attr_reader :name # Cat cannot change its name
  attr_accessor :mood, :owner
  @@cats = [] # Collects all instances of the Cat class here

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    save
  end

  def save
    @@cats << self
  end

  # Returns all the instances of the Cat class
  def self.all
    @@cats
  end

 end
