# 
class Tree
    attr_reader :cycle

    def initialize(cycle=0)
       if cycle < 0 && cycle > 60
           raise "Cycle must be within range"
       end

        @cycle=cycle
    end

    def grow
        if (cycle == 0)
            return 1
        else
            if (cycle % 2 == 0)
                grow(cycle - 1) + 1
            else
                grow(cycle-1) * 2
            end
        end
    end
end
