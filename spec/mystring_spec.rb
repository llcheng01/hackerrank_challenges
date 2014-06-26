# string manipulation spec
require_relative '../lib/mystring'

describe Mystring, '#reverse' do
    before do
        @str = Mystring.new
    end
    # it 'can swap to chars' do 
    #     input = "people"
    #     chars = input.bytes.to_a
    #     expect(chars[0].to_i).to eql (112)
    #     expect(chars[5].to_i).to eql (101)
    #     @str.swap(chars[0], chars[5])
    #     expect(chars[0].to_i).to eql (101)
    #     expect(chars[5].to_i).to eql (112)
    # end

    it 'can reverse string' do
        input = "people"
        expect(@str.reverse(input)).to eql("elpoep")
    end

    it 'can reverse string inplace' do
        input = "people"
        expect(@str.reverse_inplace!(input)).to eql("elpoep")
    end
end

describe Mystring, '#palindrome?' do
    before do
        @str = Mystring.new
    end
    it 'can determine if string is palindrome' do
        str = "aba"
        expect(@str.palindrome?(str)).to eql(true)
        str = "abcde"
        expect(@str.palindrome?(str)).to eql(false)
    end
    it 'can determine byte distance between characters' do
        str = "abcd"
        expect(@str.byte_distance(str)).to eql(4)
        str1 = "abc"
        expect(@str.byte_distance(str1)).to eql(2)
        str2 = "aba"
        expect(@str.byte_distance(str2)).to eql(0)
    end
end
