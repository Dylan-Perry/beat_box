require "./lib/node.rb"

class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        node = Node.new(data)
        @head = node   
    end
end