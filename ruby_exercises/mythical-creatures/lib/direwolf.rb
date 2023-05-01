class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect

    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        return if @starks_to_protect.length >= 2
        @starks_to_protect << stark if stark.location == @home
        stark.safety = true
    end

    def hunts_white_walkers?
        return false if !@starks_to_protect.empty?
        true
    end

    def leaves(stark)
        @starks_to_protect.delete(stark)
        stark.safety = false
        stark
    end
end

class Stark
    attr_reader :name, :location, :house_words
    attr_accessor :safety

    def initialize(name, location = "Winterfell")
        @name = name
        @location = location
        @safety = false
        @house_words = "Winter is Coming"
    end

    def safe?
        @safety
    end
end