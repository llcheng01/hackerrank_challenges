# queue.rb
require_relative 'dll'
class Queue
    attr_reader :dll

    def initialize
        @dll = DLL.new
    end

    def empty?
        @dll.empty?
    end

    def insert(value)
        @dll.insert_last(value)
    end

    def remove
        @dll.delete_first()
    end

    def print
        @dll.print()
    end
end
