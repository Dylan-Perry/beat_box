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

    def count
        if !@head
            nodes = 0
        else
            nodes = 1
            current_node = @head
            while current_node.next_node != nil
                nodes += 1
                current_node = current_node.next_node
            end
            nodes
        end
    end

    def to_string
        final_string = ""
        if !@head
            final_string = "List contains no data."
        else
            current_node = @head
            final_string = current_node.data
            while current_node.next_node != nil
                current_node = current_node.next_node
                final_string.prepend("#{current_node.data} ")
            end
            final_string
        end
    end
end