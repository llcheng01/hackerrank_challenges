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
end
