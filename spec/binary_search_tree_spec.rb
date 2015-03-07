# binary_search_tree_spec.rb

require_relative '../lib/binary_search_tree'

describe BinarySearchTree, '#initialize' do
    before do
        @bst = BinarySearchTree.new(10)
        @bst.insert(5)
        @bst.insert(11)
        @bst.insert(7)
        @bst.insert(3)
        @bst.insert(6)
        @bst.insert(9)
    end
    
    it 'identify a null tree' do
        expect(@bst.root_value).to eql(10)
    end

    it 'find the max value of the tree' do
        expect(@bst.max()).to eql(11)
    end
    it 'find the min value of the tree' do
        expect(@bst.min()).to eql(3)
    end
end


describe BinarySearchTree, '#max_height' do
    before do
        @bst = BinarySearchTree.new(10)
        @bst.insert(5)
        @bst.insert(11)
        @bst.insert(7)
        @bst.insert(3)
        @bst.insert(6)
        @bst.insert(9)
    end
    it 'find max height of the tree' do
        expect(@bst.max_height()).to eql(4)
    end
end
describe BinarySearchTree, '#in_order_list' do
    before do
        @bst = BinarySearchTree.new(10)
        @bst.insert(5)
        @bst.insert(11)
        @bst.insert(7)
        @bst.insert(3)
        @bst.insert(6)
        @bst.insert(9)
    end

    it 'can insert and find value' do
        node3 = @bst.search(3)
        expect(node3.is_a? Node).to eql(true)
        expect(node3.value).to eql(3)
    end

    it 'return in order list of nodes' do
        vals = @bst.in_order_list()
        expect(vals.is_a? Array).to eql(true)
        expect(vals.size).to eql(7)
        expect(vals[0]).to eql(3)
        expect(vals[1]).to eql(5)
        expect(vals[2]).to eql(6)
        expect(vals[3]).to eql(7)
        expect(vals[4]).to eql(9)
        expect(vals[5]).to eql(10)
        expect(vals[6]).to eql(11)
    end

    it 'return pre order list of nodes' do
        vals = @bst.pre_order_list()
        expect(vals.is_a? Array).to eql(true)
        expect(vals.size).to eql(7)
        expect(vals[0]).to eql(10)
        expect(vals[1]).to eql(5)
        expect(vals[2]).to eql(3)
        expect(vals[3]).to eql(7)
        expect(vals[4]).to eql(6)
        expect(vals[5]).to eql(9)
        expect(vals[6]).to eql(11)
    end

    it 'return post order list of nodes' do
        vals = @bst.post_order_list()
        expect(vals.is_a? Array).to eql(true)
        expect(vals.size).to eql(7)
    end

end

describe BinarySearchTree, "#bfs" do
    before do
        @bst = BinarySearchTree.new(17)
        @bst.insert(6)
        @bst.insert(46)
        @bst.insert(3)
        @bst.insert(12)
        @bst.insert(56)
        @bst.insert(48)
        @bst.insert(15)
        @bst.insert(9)
        @bst.insert(1)
    end

    it "traverse tree with Breath First search" do
        expect(@bst.bfs()).to eql([17, 6, 46, 3, 12, 56, 1, 9, 15, 48])
    end
end

describe BinarySearchTree, '#delete' do
    it 'remove node without children' do
    end

    it  'remove node with one child' do
    end

    it 'remove node with two children' do
    end
end

describe BinarySearchTree, '#least_common_accessor' do
end

describe BinarySearchTree, "#floor" do
    before do
        @bst = BinarySearchTree.new('s')
        @bst.insert('e')
        @bst.insert('x')
        @bst.insert('a')
        @bst.insert('r')
        @bst.insert('c')
        @bst.insert('h')
        @bst.insert('m')
    end

    it "find floor of the given node" do
      expect(@bst.floor('g')).to eql('e')
    end
end
