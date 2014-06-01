# anagram_spec.rb
require_relative '../lib/anagram'

describe Anagram, '#word_diff' do
    it "can initialize with the test case" do
        word = "abab"
        anagram = Anagram.new(word.to_s)
        expect(anagram.word).to eql(word)
    end
    it "check string to be of the correct type" do
        word = 1234
        expect{Anagram.new(word)}.to raise_error(TypeError, /must be lowercase alphabet/)
    end
    
    it "return -1 for odd string length" do
        word = "abc"
        anagram = Anagram.new(word)
        expect(anagram.word_diff()).to eql(-1)
    end
    
    it "return the correct word difference" do
        word = "xyyx"
        anagram = Anagram.new(word)
        expect(anagram.word_diff()).to eq(0)
    end
end
