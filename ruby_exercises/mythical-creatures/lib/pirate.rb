class Pirate
    attr_reader :name, :job, :booty

    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @booty = 0
        @curse_meter = 0
    end

    def cursed?
        @curse_meter >= 3 ? true : false
    end

    def commit_heinous_act
        @curse_meter += 1 
    end

    def rob_some_ships
        @booty += 100
    end
end