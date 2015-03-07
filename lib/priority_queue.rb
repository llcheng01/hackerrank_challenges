class PriorityQueue
  def initialize
    @elems = [nil]
  end
  
  def <<(elmen)
    @elems << elmen
    bubble_up(size() - 1)
  end

  def bubble_up(index)
    parent_index = (index / 2)

    #return if we reach the root element
    return if index <= 1

    # or if the parent is already greater than the child
    return if @elems[parent_index] >= @elems[index]

    # otherwise we exchange the child with the parent
    exchange(index, parent_index)

    # and keep bubbling up
    bubble_up(parent_index)
  end

  def exchange(source, target)
    @elems[source], @elems[target] = @elems[target], @elems[source]
  end

  # first element will always be the max because of the heap constraint
  def pop
    # exchange with the root and last element
    exchange(1, size() -1)

    # remove the last element of the last
    max = @elems.pop

    # and make sure the tree is ordered again
    bubble_down(1)
    max
  end
  
  def bubble_down(index)
    child_index = (index / 2)

    # stop if we reach the botton of the tree
    return if child_index > size() - 1

    # make sure we get the largest child
    not_the_list_elem = child_index < size() - 1

    left_elem = @elems[child_index]
    right_elem = @elems[child_index + 1]
    child_index += 1 if not_the_list_elem && right_elem > left_elem

    # there is not need to continue if the parent already bigger
    # than its children
    return if @elems[index] > @elems[child_index]

    exchange(index, child_index)

    # repeat the process until we reach a point where the parent
    # is larger than its children
    bubble_down(child_index)
  end

  def size
    @elems.length
  end

  def to_s
    "[" + @elems.join(',') + "]"
  end
end
    
@pq = PriorityQueue.new
@pq << 10
puts @pq.to_s
@pq << 7
puts @pq.to_s
@pq << 4
puts @pq.to_s
@pq << 0
puts @pq.to_s
@pq << 9
puts @pq.to_s
@pq << 6
puts @pq.to_s
@pq << 8
puts @pq.to_s
@pq << 5
puts @pq.to_s
@pq << 1
puts @pq.to_s
@pq << 3
puts @pq.to_s
@pq << 2
puts @pq.to_s
