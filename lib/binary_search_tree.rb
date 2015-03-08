# binary_search_tree.rb
# From http://codingjunkie.net/binary-search-tree-programming-praxis-solution/
require_relative 'node'
require_relative 'queue'

class BinarySearchTree
    attr_reader :root

    def initialize(root = nil)
        @root = Node.new(root)
    end

    def search(value)
        search_for_node(@root, Node.new(value))
    end

    def insert(value)
        @root = insert_value(@root, value)
    end

    def delete(value)
        @root = delete_node(@root, Node.new(value))
    end

    def in_order_list
        vals = []
        inorder(vals, @root)
        vals
    end

    def pre_order_list
        vals = []
        preorder(vals, @root)
        vals
    end

    def post_order_list
        vals = []
        postorder(vals, @root)
        vals
    end

    def root_value
        raise ArgumentError, "root is not created" unless @root.is_a? Node
        @root.value
    end

    def min
        return 0 if @root.left.nil?
        left_h = left_height(@root.left)
        left_h.value
    end

    def max
        return 0 if @root.right.nil?
        right_h = right_height(@root.right)
        right_h.value
    end

    def bfs
        vals = []
        return vals if @root.nil? || @root.value.nil?
        q = Queue.new
        q.insert(@root)
        while (!q.empty?)
            current = q.remove()
            vals << current.value.value
            q.insert(current.value.left) unless current.value.left.nil?
            q.insert(current.value.right) unless current.value.right.nil?
        end
        vals
    end
    
    def max_height
        height(@root, 1)
    end

    def floor(key)
      x = find_floor(@root, Node.new(key))
      return nil if x.nil?
      return x.value
    end

    def keys(lo, hi)
      q = Queue.new
      find_keys(@root, q, Node.new(lo), Node.new(hi))
      q
    end

    private
        def search_for_node(tnode, node)
            return nil if tnode.nil?

            if tnode == node
                tnode = node
            elsif node < tnode
                tnode = search_for_node(tnode.left, node)
            else
                tnode = search_for_node(tnode.right, node)
            end
            tnode
        end

        def insert_value(tnode, value)
            if tnode.nil?
                tnode = Node.new(value)
            elsif value < tnode.value
                tnode.left = insert_value(tnode.left, value)
            elsif
                tnode.right = insert_value(tnode.right, value)
            elsif value == tnode.value
                tnode.value = value
            end
            tnode
        end

        def delete_node(tnode, node)
            if tnode == node
                tnode = remove(tnode)
            elsif node < tnode
                tnode.left = delete_node(tnode.left, node)
            else
                tnode.right = delete_node(tnode.right, node)
            end
            tnode
        end

        def remove(node)
            if node.left.nil? && node.right.nil?
                node = nil
            elsif !node.left.nil? && node.right.nil?
                node = node.left
            elsif node.left.nil? && !node.right.nil?
                node = node.right
            else
                node = replace_parent(node)
            end
            node
        end

        def replace_parent(node)
            node.value = successor_value(node.right)
            node.right = update(node.right)
            node
        end

        def successor_value(node)
            unless node.left.nil?
                successor_value(node.left)
            end
            node.value
        end

        def update(node)
            unless node.left.nil?
                node.left = update(node)
            end
            node.right
        end

        def inorder(list, node)
            unless node.nil?
                inorder(list, node.left)
                list.push(node.value)
                inorder(list, node.right)
            end
        end

        def preorder(list, node)
            unless node.nil?
                list.push(node.value)
                preorder(list, node.left)
                preorder(list, node.right)
            end
        end

        def postorder(list, node)
            unless node.nil?
                postorder(list, node.left)
                postorder(list, node.right)
                list.push(node.value)
            end
        end

        def left_height(node)
            return node if node.left.nil?
            left_height(node.left)
        end

        def right_height(node)
            return node if node.right.nil?
            right_height(node.right)
        end

        def height(node, count)
            left_h = count
            right_h = count
            left_h = height(node.left, left_h + 1) unless node.left.nil?
            right_h = height(node.right, right_h + 1) unless node.right.nil?
            left_h > right_h ? left_h : right_h
        end

        def find_floor(node, other)
          return nil if node.nil?
          return node if node == other
          return find_floor(node.left, other) if node > other
          right = find_floor(node.right, other)
          if right.nil?
            return node
          else
            return right
          end
        end

        def find_keys(node, queue, lo, hi)
          unless node.nil?
            find_keys(node.left, queue, lo, hi) if node > lo
            queue.insert(node.value) if node > lo && node < hi
            find_keys(node.right, queue, lo, hi) if node < hi
          end
        end
end
