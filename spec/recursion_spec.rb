# spec/recursion_spec.rb
#
require_relative '../lib/recursion'

describe Recursion do
    before do
        @recur = Recursion.new
    end
    describe '#factorial' do
      it 'can calculate factorial recursively' do
          expect(@recur.factorial(5)).to eql(120)
      end
      it 'can calculate factorial iteratively' do
          expect(@recur.factorial_iterative(5)).to eql(120)
      end
    end

    describe '#reverse_int' do
      it 'can reverse integer recursively' do
        expect(@recur.reverse_int(1234, 0)).to eq 4321
      end
    end
end
