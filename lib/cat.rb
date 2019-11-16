class Cat
	attr_accessor :owner, :mood
	attr_reader :name

	@@all = []

	def initialize(pet_name, owner)
		@name = pet_name
		@mood = "nervous"
		@owner = owner
		@@all << self
	end

	def self.all
		@@all
	end
end