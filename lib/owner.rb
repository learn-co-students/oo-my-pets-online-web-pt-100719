class Owner
	attr_reader :owner, :species, :name

	@@all = []

	def initialize(name)
		@species = "human"
		@name = name
		@@all << self
	end

	def say_species
		"I am a #{self.species}."
	end

	def self.all
		@@all
	end

	def self.count
		self.all.count
	end

	def self.reset_all
		self.all.clear
	end

	def cats
		Cat.all.select { |cat| cat.owner == self }
	end

	def dogs
		Dog.all.select { |dog| dog.owner == self}
	end

	def buy_cat(pet_name)
		Cat.new(pet_name, self)
	end

	def buy_dog(pet_name)
		Dog.new(pet_name, self)
	end

	def walk_dogs
		self.dogs.each { |dog| dog.mood = "happy" }
	end

	def feed_cats
		self.cats.each { |cat| cat.mood = "happy" }
	end

	def all_pets
		self.cats + self.dogs
	end

	def sell_pets
		self.all_pets.each do |pet| 
			pet.mood = "nervous"
			pet.owner = nil
		end
	end

	def list_pets
		"I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
	end

end