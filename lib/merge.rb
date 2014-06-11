# merge.rb

class Merge
    def merge_sorted(list1, list2)
        m = list1.size - 1
        n = list2.size - 1
        k = list1.size + list2.size
        k -= 1
        result = []
        while k >= 0 do
            if (n < 0 || (m >= 0 && list1[m] > list2[n]))
                result[k] = list1[m]
                k -= 1
                m -= 1
            else
                result[k] = list2[n]
                k -= 1
                n -= 1
            end
        end
        result
    end
end
