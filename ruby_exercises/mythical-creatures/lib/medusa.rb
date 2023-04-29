class Medusa
    attr_reader :name, :statues

    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        victim.stone
        @statues.push(victim)
        while @statues.count > 3
            @statues.shift.unstone
        end
    end
end

class Person
    attr_reader :name, :stoned

    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        @stoned
    end

    def stone
        @stoned = true
    end

    def unstone
        @stoned = false
    end

end