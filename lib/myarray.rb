class MyArray
  attr_accessor :data

  def initialize data
    @data = data
  end

  def find_2nd_max
    max = @data.first
    second = @data[1]
    @data.each do |d|
      max = d if max < d
      second = d if max > d && second < d
    end
    second
  end

  def pie_theory
    # a^2 + b ^2 = c ^2
    result = []
    len = @data.length
    i = 0
    while i < len - 1 do
      unless i + 2 > len - 1
        a = @data[i]
        b = @data[i+1]
        c = @data[i+2]
        sum = a**2 + b**2
        result << [a,b,c] if sum == c**2
      end
      i += 1
    end
    result
  end
end
