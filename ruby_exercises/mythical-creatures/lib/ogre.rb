class Ogre
    attr_reader :name, :home, :encounter_counter, :visible, :swings

    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @encounter_counter = 0
        @visible = false
        @swings = 0
    end

    def encounter(human)
        @encounter_counter += 1
        
        human.encounter_ogre

        if @encounter_counter % 3 == 0
            @visible = true
            swing_at(human)
        else
            @visible = false
        end
    end

    def visible?
        @visible
    end

    def swing_at(human)
        @swings += 1
        human.knock_out if @swings % 2 == 0        
    end

    def apologize(human)
        human.wake_up
    end 
end

class Human
    attr_reader :name, :encounter_counter

    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
        @knocked_out = false
    end

    def notices_ogre?
        if @encounter_counter % 3 == 0
            true
        else
            false
        end
    end

    def encounter_ogre
        @encounter_counter += 1
    end

    def knocked_out?
        @knocked_out
    end

    def knock_out
        @knocked_out = true
    end

    def wake_up
        @knocked_out = false
    end
end