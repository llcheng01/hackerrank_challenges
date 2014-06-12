# duplicate.rb

class Duplicate
    def find_dup(arr)
        m = map_elements(arr)
        result = []
        m.each {|k,v| result << k if v>0}
        result
    end

    def find_dup_sorted(arr)
        result = []
        arr.sort!
        temp = arr[0]
        i = 1
        while (i < arr.length) do
            puts "temp: #{temp} ; element: #{arr[i]}"
            if (temp == arr[i] && !result.include?(temp))
                result << temp
            else
                temp = arr[i]
            end
            i += 1
        end
        result
    end

    def map_elements(arr)
        res = arr.inject({}) do |m, e|
            if m[e].nil?
                m[e] = 0
            else
                m[e] +=1
            end
            m
        end
        res
    end
end
