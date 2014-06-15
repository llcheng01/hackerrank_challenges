# Double Linked List

class DLL
    attr_reader :head, :tail

    def initialize
        # raise (ArgumentError.new 'Linked List must be initialized by an array') unless arr.is_a?(Array)
        @head = nil
    end

    def empty?
        @head.nil?
    end
    
    # insert to the front
    def insert_first(value)
        if (@head.nil?)
            @head = Node.new(value)
            @tail = @head
        else
            previous = @head
            @head = Node.new(value)
            previous.parent = @head
            @head.child = previous
        end
    end

    def insert_last(value)
        if (@head.nil?)
            @head = Node.new(value)
            @tail = @head
        else
            previous = @tail
            # previous
            @tail = Node.new(value)
            previous.child = @tail
            @tail.parent = previous
        end
    end

    def delete_first
        return nil if empty?
        previous = @head
        # last node
        @tail = previous.child if (previous.child.nil?)
        @head = previous.child
        previous
    end

    def delete(value)
        found = find_node(@head, value)
        return nil if found.nil?
        previous = found.parent
        if (previous.nil?)
            delete_first()
        else
            previous.child = found.child
            found.child.parent = previous unless found.child.nil?
        end
    end

    def find(value)
        return nil if empty?
        found = find_node(@head, value)
        found
    end
    
    def size
        accumulate(@head, 0)
    end

    def print
        return "empty" if @head.nil?
        result = []
        # iterate ll from left to right
        node = @head
        while (!node.nil?) do
            result << node.value
            node = node.child
        end
        result.join(' ')
    end
    private
        def find_node(node, value)
            return nil if node.nil?
            return node if node.value == value
            find_node(node.child, value)
        end

        def accumulate(node, value)
            return value if node.nil?
            value += 1
            accumulate(node.child, value)
        end

    class Node
        attr_accessor :value, :parent, :child

        def initialize(value)
            @value = value
            @parent = nil
            @child = nil
        end
    end
end
