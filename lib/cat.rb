class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  # code goes here
  def initialize(name, owner)
    @name = name
    @owner = owner
    owner.add_pet(self)
    @mood = 'nervous'
    @@all << self
  end

  def owner=(owner)
    @owner = owner
    owner
  end

  def self.all
    @@all
  end
end