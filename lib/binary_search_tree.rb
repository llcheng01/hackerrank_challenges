# binary_search_tree.rb
# From http://codingjunkie.net/binary-search-tree-programming-praxis-solution/
require_relative 'node'

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
        p vals.join(' ')
        vals
    end

    def root_value
        raise ArgumentError, "root is not created" unless @root.is_a? Node
        @root.value
    end

    def height
        return 0 if @root.left.nil? && @root.right.nil?

        left_h = left_height(0, @root.left)
        right_h = right_height(0, @root.right)
        left_h > right_h ? left_h : right_h
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

        def left_height(value, node)
            return value.to_i if node.nil?
            
            value += 1
            left_height(value, node.left)
        end
        
        def right_height(value, node)
            return value if node.nil?
            value += 1
            right_height(value, node.right)
        end

end
