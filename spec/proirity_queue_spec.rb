# Double Linked List spec
require_relative '../lib/priority_queue'

describe PriorityQueue do
  before do
    @pq = PriorityQueue.new
    @pq << 10
    @pq << 7
    @pq << 4
    @pq << 0
    @pq << 9
    @pq << 6
    @pq << 8
    @pq << 5
    @pq << 1
    @pq << 3
    @pq << 2
  end
  describe '#<<' do
    it 'can store elements to internal array' do
      expect(@pq.size).to eql 11
    end
  end
end
