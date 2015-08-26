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
    k = len - 1
    data = @data.sort

    while k >= 2  do
      i = 0
      j = k - 1
      z = data[k]
      puts "k: #{k}"
      while (i < k - 1 && i < j) do
        x = data[i]
        y = data[j]
        sum = x**2 + y**2
        if sum < z**2
          i += 1
        elsif  sum > z**2
          j -= 1
        else
          result << [x,y,z]
          i += 1
          j -= 1
        end
        puts "i: #{i} and j: #{j}"
      end
      k -= 1
    end
    result
  end
end
