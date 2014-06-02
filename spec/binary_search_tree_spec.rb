# binary_search_tree_spec.rb

require_relative '../lib/binary_search_tree'

describe BinarySearchTree, '#initialize' do
    before do
        @bst = BinarySearchTree.new(2)
        @bst.insert(1)
        @bst.insert(3)
        @bst.insert(5)
        @bst.insert(4)
        @bst.insert(9)
    end
    
    it 'identify a null tree' do
        expect(@bst.root_value).to eql(2)
    end

    it 'find the height of the tree' do
        expect(@bst.height()).to eql(3)
    end
end


describe BinarySearchTree, '#in_order_list' do
    before do
        @bst = BinarySearchTree.new(2)
        @bst.insert(1)
        @bst.insert(3)
    end

    it 'can insert and find value' do
        node3 = @bst.search(3)
        expect(node3.is_a? Node).to eql(true)
        expect(node3.value).to eql(3)
    end

    it 'return in order list of nodes' do
        vals = @bst.in_order_list()
        expect(vals.is_a? Array).to eql(true)
        expect(vals.size).to eql(3)
        expect(vals[0]).to eql(1)
        expect(vals[1]).to eql(2)
        expect(vals[2]).to eql(3)
    end

    it 'return pre order list of nodes' do
        vals = @bst.pre_order_list()
        expect(vals.is_a? Array).to eql(true)
        expect(vals.size).to eql(3)
        expect(vals[0]).to eql(2)
        expect(vals[1]).to eql(1)
        expect(vals[2]).to eql(3)
    end
end
