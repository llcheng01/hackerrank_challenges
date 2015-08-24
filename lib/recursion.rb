# recursion.rb
class Recursion
    def factorial(n)
        if n <= 1
            return 1
        else
            n * factorial(n-1)
        end
    end

    def factorial_iterative(n)
        result = n
        while (n > 1) do
            n -= 1
            result *= n
        end
        result
    end
    
    def reverse_int(n, result)
      div = n / 10
      mod = n % 10
      result = result * 10 + mod
      return result if div == 0
      reverse_int(div, result)
    end
end
