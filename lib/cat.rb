class Cat
  attr_reader :name, :owner
  attr_accessor :mood
  @@all = []

  def initialize(name, owner_obj)
    @name = name
    @owner = owner_obj
    @mood = "nervous"
    @@all << self
  end

  def owner=(owner_obj)
    @owner = owner_obj
    
  end

  def self.all
    @@all
  end

end