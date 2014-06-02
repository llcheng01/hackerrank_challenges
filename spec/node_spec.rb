# node_spec.rb
require_relative '../lib/node'

describe Node, "#initialize" do

    it "has a value" do
        empty_node = Node.new(3, nil, nil)
        expect(empty_node.value).to eql(3)
    end

    it "can compare to other node" do
        big_node = Node.new(100, nil, nil)
        small_node = Node.new(89, nil, nil)

        expect(big_node > small_node).to eql(true)
    end

    #it "display the node" do
    #end
end
