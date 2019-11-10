require 'pry'
class Cat
  
  attr_accessor :owner
  attr_reader :name, :mood
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def mood=(mood)
    @mood = mood
  end
  
  def self.all
    @@all
  end
end