# mystring.rb

class Mystring
    def reverse(input)
        len = input.length
        i = 0
        chars = input.bytes.to_a
        # puts "Before: #{chars.inspect}"
        while (i < len/2) do
           # swap(chars[i], chars[len - i - 1])
           chars[i] ^= chars[len - i - 1]
           chars[len - i - 1] ^= chars[i]
           chars[i] ^= chars[len - i - 1]
           i += 1
        end
        # puts "After: #{chars.inspect}"
        chars.pack('c*').force_encoding('UTF-8')
    end
    
    # from stackoverflow
    def reverse_inplace!(input)
        half_length = input.length / 2
        half_length.times {|i| input[i], input[-i-1] = input[-i-1], input[i]}
        input
    end
    
    def palindrome?(input)
        # word or sentence, no white space spells the same backword
        # and forward
        return input == reverse(input)
    end
    
    # compare the byte distance between the first half
    # and second half of a word
    def byte_distance(input)
        return 0 if palindrome?(input)
        half_length = input.length / 2
        input_chars = input.bytes.to_a
        sum = 0
        half_length.times do |i|
            diff = input_chars[-i-1] - input_chars[i]
            sum += diff  if diff > 0
        end
        sum
    end
end
