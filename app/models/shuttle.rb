class Shuttle
attr_accessor :model_number, :capacity
@@all =[]

def initialize(model, capacity)
    @model_number=model
    @capacity = capacity
    Shuttle.all << self
end

def self.all
    @@all
end

def add_astronaut(launch_date, astronaut)
    Mission.new(launch_date, astronaut, self)
end

def shuttle_list
    Mission.all.select do |a|
        a.shuttle == self 
   end
end

def current_astronaut
    shuttle_list.map {|a| a.astronaut }
end

def self.find_by_model(string)
    Shuttle.all.find {|a| a.model_number == string}
end
end
