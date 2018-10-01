require_relative 'node'

class DoublyList
    attr_reader :head

    def initialize(val)
        @head = Node.new(nil, val, nil)
        puts @head.val
    end
    
    def add_to_tail(val)
        current = @head
        while current.next != nil
          current = current.next
        end
        current.next = Node.new(current, val, nil)
    end

    def add_to_tip(val)
        new_node = Node.new(nil ,val, @head)
        @head.prev = new_node
        @head = new_node
    end
    def return_list
        elements = []
        current = @head
        while current.next != nil
          elements << current
          current = current.next
        end
        elements << current
    end
  
    def display_list
        puts "Going from Head to Tail"
        current = @head
        while current.next != nil
            puts current.val
            current = current.next
        end
        puts current.val

        puts "Going from Tail to Head"
        while current.prev != nil
            puts current.val
            current = current.prev
        end
        puts current.val
    end
end