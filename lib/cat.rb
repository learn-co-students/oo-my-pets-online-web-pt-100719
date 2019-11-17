class Cat

  attr_reader :name # Name does not change
  attr_accessor :owner, :mood
  @@all = []

  def initialize(name, owner, mood = "nervous")
    @mood = mood
    @name = name
    @owner = owner
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
