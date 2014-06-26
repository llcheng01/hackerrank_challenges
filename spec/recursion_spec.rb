# spec/recursion_spec.rb
#
require_relative '../lib/recursion'

describe Recursion, '#factorial' do
    before do
        @recur = Recursion.new
    end
    it 'can calculate factorial recursively' do
        expect(@recur.factorial(5)).to eql(120)
    end
    it 'can calculate factorial iteratively' do
        expect(@recur.factorial_iterative(5)).to eql(120)
    end
end
