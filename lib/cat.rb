
class Cat
  attr_accessor 
  attr_reader :owner, :name, :mood
  
  @@all =[]
  
  def initialize(name,owner, mood = "nervous")
    @name = name
    @name.freeze
    @owner = owner
    @mood = mood
    @@all << self
  end
  
  def owner=(owner)
    @owner = owner
  end
  
  def mood=(mood)
    @mood = mood
  end
  
  def self.all
    @@all 
  end
  
end