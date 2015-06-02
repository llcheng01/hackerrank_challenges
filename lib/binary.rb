# binary.rb
class Binary
  attr_accessor :str, :int_val, :type
  
  DATA_TYPE = ['ARRAY', 'BITSTRING', 'HEXSTRING', 'FIXNUM']

  def initialize str
    self.str = str
    if str.instance_of? Array
      self.int_val = reverse_and_accumlate str
      self.type = DATA_TYPE[0]
    elsif str.instance_of? String
      # get substring for 'x' and 'b'
      if str[1] == 'x'
        self.int_val = accumlate str[2..-1]
        self.type = DATA_TYPE[2]
      elsif str[1] == 'b'
        self.int_val = reverse_and_accumlate(str[2..str.length].split(''))
        self.type = DATA_TYPE[1]
      else
        # raise exception if not bitstring
        self.int_val = reverse_and_accumlate(str.split(''))
        self.type = DATA_TYPE[1]
      end
    elsif str.instance_of? Fixnum
      self.int_val = str
      self.type = DATA_TYPE[3]
    end
  end

  def to_i
    self.int_val
  end

  private
    def reverse_and_accumlate arr
      # arr.reverse.inject(0) {|sum, i| sum += i.to_i * 2 }
      sum = 0
      arr.reverse.each_with_index do |a, i|
        a = a.to_i
        sum += a * 2 ** i
      end
      sum
    end

    def accumlate hex_arr
      sum = 0
      hex_arr.reverse.split('').each_with_index do |h, i|
        sum += (convert_hex_to_int(h)) * 16 ** i
      end
      sum
    end

    def convert_hex_to_int c
      case c
      when 'A'
        return 10
      when 'B'
        return 11
      when 'C'
        return 12
      when 'D'
        return 13
      when 'E'
        return 14
      when 'F'
        return 15
      else
        return c.to_i
      end
    end
end
