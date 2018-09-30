class Node
    attr_accessor :prev, :val, :next
  
    def initialize(prev_node, val, next_node)
        @prev = prev_node
        @val  = val
        @next = next_node
    end
end