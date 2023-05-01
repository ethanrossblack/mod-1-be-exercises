 class Wizard
    attr_reader :name, :bearded

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rest_level = 0
    end

    def bearded?
        @bearded
    end

    def incantation(string)
        "sudo " + string
    end

    def rested?
        return false if @rest_level >= 3
        true
    end

    def cast
        @rest_level += 1
        "MAGIC MISSILE!"
    end
end