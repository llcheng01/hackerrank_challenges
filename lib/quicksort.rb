# Quicksort.rb

class Quicksort
    def partition(some_list)
        # assume first element is the pivot
        # assume pivot is close to the average

        # less, more = ar[1..-1].partition {|i| i < ar[0]}
        # result = (less << ar[0] << more).flatten
        partitioning(some_list, 1, some_list.size() -1)
        puts result
        result
    end

    def partitioning(some_list, first, last)
        return some_list if first >= last || (first >= some_list.length || last <= 0)
        puts "a: #{first} b: #{last}"

        swap(some_list, first, last) if (some_list[first].to_i > some_list[0].to_i && some_list[last].to_i < some_list[0].to_i)
        first += 1 if some_list[first].to_i > some_list[0].to_i
        last -= 1 if some_list[last].to_i < some_list[0].to_i
        partitioning(some_list, first, last)
    end

    def swap(some_list, first, last)
        some_list[first], some_list[last] = some_list[last], some_list[first]
        # a = some_list[first]
        # b = some_list[last]

        # a ^= b
        # b ^= a
        # a ^= b
        # some_list[first] = a
        # some_list[last] = b
    end
end
