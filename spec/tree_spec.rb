require_relative '../lib/tree'

describe Tree, '#growth' do
    it "should handle initialize" do
        tree = Tree.new(10)

        expect(tree.cycle).to eql(10)

    end

    it "calculate default height" do
        tree = Tree.new(0)
        
        expect(tree.grow()).to eql(1)
    end
    
    it "can handle 0 <= N <= 60 cycle limits" do
        # tree = Tree.new(65)

    end 

    it "can calculate correct cycle" do
        tree = Tree.new(5)
    end
end
