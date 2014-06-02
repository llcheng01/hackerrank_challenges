# From http://codingjunkie.net/binary-search-tree-programming-praxis-solution/

class Node
    include Comparable
    attr_accessor :left, :right, :value

    def initialize(value = nil, left = nil, right = nil)
        @value = value
        @left = left
        @right = right
    end

    def <=>(other_node)
        @value <=> other_node.value
    end

    def to_s
        "[value: #{@value} left=> #{@left} right=> #{@right}]"
    end
end
