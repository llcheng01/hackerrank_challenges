# tree.rb
class Tree
    def grow(cycle)
        raise RangeError, "Cycle must be within range" if (cycle < 0 || cycle > 60)
        return 1 if (cycle == 0)
        (cycle % 2 == 0) ? grow(cycle - 1) + 1 : grow(cycle-1) * 2
    end
end
