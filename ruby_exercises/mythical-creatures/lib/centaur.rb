class Centaur
    attr_reader :name, :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @tired_level = 0
        @stick = false
    end

    def shoot
        return "NO!" if cranky? or laying?
        @tired_level += 1
        "Twang!!!"
    end

    def run
        return "NO!" if laying?
        @tired_level += 1
        "Clop clop clop clop!"
    end

    def cranky?
        if @tired_level >= 3
            @cranky = true
        end
        @cranky
    end

    def standing?
        @standing
    end

    def laying?
        !@standing
    end

    def sleep
        return "NO!" if @standing
        @cranky = false
        @tired_level = 0
    end

    def lay_down
        @standing = false
    end

    def stand_up
        @standing = true
    end

    def drink_potion
        return "NO!" if laying?
        @stick = true if @tired_level = 0
        @cranky = false
        @tired_level = 0
    end

    def has_stick?
        if @stick

        puts "",""
        print "","Oh yeah, this centaur's got a stick","",""
        puts ""
        print "
           .         ;
            ;%     ;;
             :;%  %;
               :;%;'     .,
       ;        %;'    ,;
        %;    ;%;    ,%'
         %;  ;%;   ,%;'
          % ;%;  ,%;'
          `;%%;.%;'
       %; ;@%;%'
        %;@%;'
       ;@@%;'
      ;@@%;
     ;@@%;
    %@@%;

    "
            return "Oh yeah, this centaur's got a stick"
        else
            return "No sticks for this centaur"
        end
    end
end
