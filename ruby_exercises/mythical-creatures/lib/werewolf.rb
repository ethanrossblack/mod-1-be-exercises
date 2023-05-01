class Werewolf
    attr_reader :name, :location, :human, :wolf, :hungry

    def initialize (name, location = "Denver")
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
    end

    def change!
        if @human
            @human = false
            @wolf = true
            @hungry = true
        else
            @human = true
            @wolf = false
            @hungry = false
        end 
    end

    def human?
        @human
    end

    def wolf?
        @wolf
    end

    def hungry?
        @hungry
    end

    def consume_victim (victim)
        return if @human
        @hungry = false
        victim.status = :dead
    end
end


