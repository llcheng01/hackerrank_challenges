# queue_spec
require_relative '../lib/queue'

describe Queue, '#initialize' do
    before do
        @q = Queue.new
    end

    it 'test if queue is empty' do
        expect(@q.empty?).to eql(true)
        @q.insert(17)
        expect(@q.empty?).to eql(false)
    end
    it 'can insert item from the back' do
        @q.insert(17)
        expect(@q.print).to eql("17")
        @q.insert(6)
        @q.insert(46)
        expect(@q.print).to eql("17 6 46")
    end
    
    it 'can remove item from the front' do
        @q.insert(17)
        @q.insert(6)
        @q.insert(46)
        @q.insert(3)
        expect(@q.print).to eql("17 6 46 3")
        @q.remove()
        expect(@q.print).to eql("6 46 3")
        @q.remove()
        expect(@q.print).to eql("46 3")
    end
end
