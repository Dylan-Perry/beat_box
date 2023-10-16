require "./lib/node.rb"

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(node_data)
        if @head
            current_node = @head
            until current_node.next_node == nil
                current_node = current_node.next_node
            end
            current_node.next_node = Node.new(node_data)
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
            final_string = "Error: list contains no data."
        else
            current_node = @head
            final_string = current_node.data
            while current_node.next_node != nil
                current_node = current_node.next_node
                final_string << " #{current_node.data}"
            end
            final_string
        end
    end

    def prepend(node_data)
        if @head
            current_head = @head
            @head = Node.new(node_data)
            head.next_node = current_head
        else
            @head = Node.new(node_data)
        end
    end

    def insert(index, node_data)
        if !@head
            if index == 0
                @head = Node.new(node_data)
            else
                "Note: Data inserted at beginning of list, since list was empty"
                @head = Node.new(node_data)
            end
        else
            if index == 0
                current_head = @head
                @head = Node.new(node_data)
                head.next_node = current_head
            else
                current_node = @head
                until index == 1
                    current_node = current_node.next_node
                    index -= 1
                end
                inserted_node = Node.new(node_data)
                new_next_node = current_node.next_node
                inserted_node.next_node = new_next_node
                current_node.next_node = inserted_node
            end
        end
    end
end
