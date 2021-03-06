# Double Linked List spec

require_relative '../lib/dll'

describe DLL, '#traverse' do
    before do
        @dll = DLL.new
    end
    
    it 'can insert_first nodes' do
        expect(@dll.empty?).to eql(true)
        @dll.insert_first(3)
        @dll.insert_first(1)
        @dll.insert_first(2)
        expect(@dll.empty?).to eql(false)
        expect(@dll.print).to eql("2 1 3")
    end

    it 'can insert node from the end' do
        expect(@dll.empty?).to eql(true)
        @dll.insert_last(3)
        @dll.insert_last(1)
        @dll.insert_last(2)
        expect(@dll.empty?).to eql(false)
        expect(@dll.print).to eql("3 1 2")
    end

    it 'print the entire list' do
        @dll.insert_first(3)
        @dll.insert_first(1)
        @dll.insert_first(2)
        expect(@dll.print).to eql("2 1 3")
    end

    it 'remove node from the top' do
        @dll.insert_first(3)
        @dll.insert_first(1)
        @dll.insert_first(2)
        @dll.delete_first
        expect(@dll.print).to eql("1 3")
        a = @dll.delete_first
        expect(a.value).to eql(1)
        expect(@dll.print).to eql("3")
        @dll.delete_first
        expect(@dll.print).to eql("empty")
        expect(@dll.empty?).to eql(true)
    end

    it "find vode with specific value" do
        @dll.insert_first(3)
        @dll.insert_first(4)
        @dll.insert_first(1)
        @dll.insert_first(2)
        @dll.insert_first(7)
        @dll.insert_first(5)
        @dll.insert_first(6)
        result = @dll.find(2)
       expect(result.value).to eql(2)
    end
    
   it 'able to delete head node' do
        @dll.insert_first(3)
        @dll.insert_first(1)
        @dll.insert_first(2)
        expect(@dll.print).to eql("2 1 3")
        @dll.delete(2)
        expect(@dll.print).to eql("1 3")
   end
   
   it 'able to delete specific node' do
        @dll.insert_first(3)
        @dll.insert_first(1)
        @dll.insert_first(2)
        expect(@dll.print).to eql("2 1 3")
        @dll.delete(1)
        expect(@dll.print).to eql("2 3")
   end

   it 'able to iterate to find the size of the linked list' do
        @dll.insert_first(3)
        @dll.insert_first(1)
        @dll.insert_first(2)
        expect(@dll.size()).to eql(3)
        @dll.insert_first(4)
        expect(@dll.size()).to eql(4)
        @dll.delete(2)
        @dll.delete(1)
        expect(@dll.size()).to eql(2)
        expect(@dll.print).to eql("4 3")
   end
end
