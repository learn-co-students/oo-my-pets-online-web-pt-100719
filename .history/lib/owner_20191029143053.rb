require 'pry'
class Owner
  attr_reader :name, :species, :fishes, :cats, :dogs
  @@all = []
  @pets = {:fishes => [], :cats => [], :dogs=> []}

  def initialize(name, species = "human")
    @name = name
    @species = species  
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
end