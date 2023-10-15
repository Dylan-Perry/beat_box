require "./lib/node.rb"

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(node_data)
        if @head
            current_head = @head
            @head = Node.new(node_data)
            head.next_node = current_head
        else
            @head = Node.new(node_data)
        end
    end
    # def count

    # end
end