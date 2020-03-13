class Mission
attr_accessor :launch_date, :astronaut, :shuttle 
@@all= []

def initialize(launch_date, astronaut, shuttle)
    @launch_date =launch_date
    @astronaut = astronaut
    @shuttle = shuttle
    Mission.all << self  
end

def self.all
    @@all << self 
end
end
