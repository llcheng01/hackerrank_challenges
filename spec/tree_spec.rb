require_relative '../lib/tree'

describe Tree, '#growth' do
    it "can handle 0 <= N <= 60 cycle limits" do
        tree = Tree.new()
        expect{tree.grow(65)}.to raise_error(RangeError, /within range/)
    end
    it "calculate default height" do
        tree = Tree.new()
        expect(tree.grow(0)).to eql(1)
    end

    it "can calculate correct cycle" do
        tree = Tree.new()
        expect(tree.grow(5)).to eql(14)
    end
end
