class Astronaut
  attr_accessor :name, :age, :specialty
  @@all= []
  def initialize(name, age, specialty="general")
    @name=name
    @age= age
    @specialty=specialty
  Astronaut.all << self
end

def self.all
@@all
end

def self.all_count
Astronaut.all.count
end
end
