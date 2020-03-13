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

def add_shuttle(launch_date, shuttle)
    Mission.new(launch_date, self, shuttle)
end

def self.all_count
  Astronaut.all.count
end

def astronaut_list(name)
  Mission.all.select {|a| a.astronaut == self }
end

def shuttles
  astronaut_list.map {|a| a.shuttle }
end

def self.most_missions
  astronaut_hash = Hash.new{1}
end
end
