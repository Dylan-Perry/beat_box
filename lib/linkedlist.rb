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
        if !@head
            "Error: list contains no data."
        else
            current_node = @head
            string = current_node.data
            while current_node.next_node != nil
                current_node = current_node.next_node
                string = string + " #{current_node.data}"
            end
            string
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
                @head = Node.new(node_data)
                "Note: Since list was empty, inserted data at beginning of list instead of specified location"
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

    def find(index, element_count)
        if !@head
            "Error: List contains no data"
        else
            current_node = @head
            until index == 0
                current_node = current_node.next_node
                index -= 1
            end
            final_string = current_node.data
            while current_node.next_node != nil && element_count > 1
                current_node = current_node.next_node
                final_string << " #{current_node.data}"
                element_count -= 1
            end
            final_string
        end
    end

    def includes?(node_data)
        if !@head
            "Error: List contains no data"
        else
            node_data = node_data.downcase
            current_node = @head
            while current_node.next_node != nil
                current_node.data = current_node.data.downcase
                if current_node.data == node_data
                    return true
                else
                    current_node = current_node.next_node
                end
            end
            current_node.data = current_node.data.downcase
            if current_node.data == node_data
                return true
            else
                return false
            end
        end
    end

    def pop
        if !@head
            "Error: List contains no data"
        else
            current_node = @head
            until current_node.next_node == nil
                previous_node = current_node
                current_node = current_node.next_node
            end
            popped_string = current_node.data
            current_node = nil
            previous_node.next_node = nil
            popped_string
        end
    end
end
