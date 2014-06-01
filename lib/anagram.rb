# anagram.rb

class Anagram
    attr_reader :word

    def initialize(word)
        raise RangeError, "Test case must be between 1 <= a + b <=1000 in length" if word.size > 10000 || word.size < 1
        raise TypeError, "Test case must be lowercase alphabet" unless word.is_a?(String) && !!word.match(/^[[:alpha:]]+$/)
        @word = word
    end
    def word_diff
        return -1 unless (@word.size % 2 == 0)
    end
end
