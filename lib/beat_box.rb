require "./lib/node.rb"
require "./lib/linked_list.rb"

class BeatBox
    attr_accessor :list

    def initialize(list)
        @list = list
    end

    def append(nodes_string)
        nodes_array = nodes_string.split
        nodes_array.each do |node|
            @list.append(node)
        end
    end
end