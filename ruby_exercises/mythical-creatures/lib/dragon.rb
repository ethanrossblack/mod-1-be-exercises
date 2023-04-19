class Dragon
    attr_reader :name, :rider, :color

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hunger_level = 0
    end

    def hungry?
        @hunger_level < 3 ? true : false 
    end

    def eat
        @hunger_level += 1
    end

end