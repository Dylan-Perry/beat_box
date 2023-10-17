require "./lib/node.rb"
require "./lib/linked_list.rb"

class BeatBox
    attr_accessor :list

    def initialize
        @list = LinkedList.new
    end

    def append(nodes_string)
        nodes_array = nodes_string.split
        nodes_array.each do |node|
            @list.append(node)
        end
    end

    def count
        @list.count
    end

    def play
        beat = @list.to_string
        `say -v junior #{beat}`
    end
end