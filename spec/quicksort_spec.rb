# quicksort_spec.rb

require_relative '../lib/quicksort'

describe Quicksort, '#partition' do
    before do
        # @ar = [0, -3, 6, 4, -10, 8, -5, 2, -7]
        @ar = [4, 5, 3, 7, 2]
        @sort = Quicksort.new
    end

    it "can swap two value in the array" do
        a = @ar[1]
        b = @ar[7]

        @sort.swap(@ar, 1, 7)
        expect(@ar[7]).to eql(a)
        expect(@ar[1]).to eql(b)
    end

    it "can partition an array" do
        @sort.partition(@ar)
    end
end 
