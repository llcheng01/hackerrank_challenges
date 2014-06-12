# duplicate_spec.rb

require_relative '../lib/duplicate'

describe Duplicate, "#find_dup" do
    before do
        @dup = Duplicate.new
        @sample = [10, 2, 12, 5, 11, 12, 5, 31, 18, 5]
    end
    it "keep track of the count for each elements" do
        h = @dup.map_elements(@sample)
        expect(h[10]).to eql(0)
        expect(h[12]).to eql(1)
    end
    it "find duplicate elements in the array" do
        arr = @dup.find_dup(@sample)
        expect(arr).to eql([12,5])
    end

    it "find duplication without internal hash" do
        arr = @dup.find_dup_sorted(@sample)
        expect(arr).to eql([5,12])
    end
end
