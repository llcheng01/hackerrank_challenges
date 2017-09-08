require 'spec_helper'

describe MyArray do
  describe '#find_2nd_max' do
    it 'should find the second largest number in an array' do
      @my_arr1 = MyArray.new [3, 14, 5, 6, 2, 1, 11, 20, 16]
      expect(@my_arr1.find_2nd_max).to eq 16
    end

    it 'should find second largest number in consecutive array' do
        @my_arr2 = MyArray.new [1, 2, 3, 4]
        expect(@my_arr2.find_2nd_max).to eq 3 
    end
  end
  
  describe '#pie_theory' do
    it 'should find array of three items that matches pie_theory' do
      @my_arr = MyArray.new [9, 2, 3, 4, 8, 5, 6, 10]
      expect(@my_arr.pie_theory).to eq [[6,8,10],[3,4,5]]
    end

    it 'should return empty array if no match' do
      @my_arr = MyArray.new [9, 1, 3, 8, 5, 10]
      expect(@my_arr.pie_theory).to eq []
    end
  end
end
