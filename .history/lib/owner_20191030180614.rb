require 'pry'
require 'cat.rb'
class Owner
  attr_accessor :pets, :cats, :fishes, :dogs
  attr_reader :name, :species
  @@owner = []
  

  def initialize(name, species = "human")
    @name = name
    @species = species  
    @@owner << self
    @pets = {:fishes => [], :cats => [], :dogs=> []}
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@owner
  end

  def buy_cat
    def buy_cat(name_of_cat)
      @pets[:cats] << Cat.new(name_of_cat)
    end
  end

  def self.count
    @@owner.length
  end

  def self.reset_all
    @@owner.clear
  end
end