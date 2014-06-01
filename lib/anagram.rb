# anagram.rb

class Anagram
    attr_reader :word

    def initialize(word)
        raise RangeError, "Test case must be between 1 <= a + b <=1000 in length" if word.size > 10000 || word.size < 1
        raise TypeError, "Test case must be lowercase alphabet" unless word.is_a?(String) && !!word.match(/^[[:alpha:]]+$/)
        @word = word
    end
    # Just word difference between the first and second half of a word
    # Not really anagram
    def word_diff
        return -1 unless (@word.size % 2 == 0)
        # initialize a hash with 26 lowercase alphabet character and set count for 0
        word_hash = ('a'..'z').inject({}) {|h,c| h[c] = 0; h}
        # Increment count for first word
        len = @word.size / 2
        @word[0..len-1].split("").each {|c| word_hash[c] += 1}
        # Decrement count for second word
        @word[len..len*2].split("").each {|c| word_hash[c] -= 1}
        # Check how many count > 0
        count = 0
        word_hash.each {|k,v| count += 1 if v > 0}
        count
    end
end
