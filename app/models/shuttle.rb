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

def add_astronaut(astronaut, date)
    if Astronaut.self.count+1 < self.capacity 
        Astronaut.all << astronaut
    end
end

def shuttle_list
    Mission.all.select do |a|
        a.shuttle == self 
   end
end


def current_astronaut
    shuttle_list.map {|a| a.astronaut }
end



end
