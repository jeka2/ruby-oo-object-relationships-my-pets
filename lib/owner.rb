class Owner
  attr_accessor :pets
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = []
    @species = 'human'
    @@all << self
  end

  def add_pet(pet)
    @pets << pet
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def cats
    all_cats = @pets.map do |pet| 
      pet if pet.is_a?(Cat)
    end
    all_cats
  end

  def dogs
    all_dogs = @pets.map do |pet| 
      pet if pet.is_a?(Dog)
    end
    all_dogs
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |pet|
      pet.mood = 'nervous'
      pet.owner = nil
    end
    self.pets = []
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 

end