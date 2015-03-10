class Factorial

  def do_fact(n, multi)
    return multi if n <= 1
    multi = multi * n
    do_fact(n-1, multi)
  end
end

f = Factorial.new
puts "Result: #{f.do_fact(100, 1)}"
