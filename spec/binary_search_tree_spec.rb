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

    # need to fix
    it 'find the max height of the tree' do
        expect(@bst.height()).to eql(4)
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
