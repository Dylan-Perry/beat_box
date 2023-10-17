require "./lib/node.rb"
require "./lib/linked_list.rb"

class BeatBox
    attr_accessor :list, :valid_beats, :rate, :voice

    def initialize(valid_beats = "tee dee deep bop boop la na ditt doo", rate = 0, voice = "junior")
        @list = LinkedList.new
        @valid_beats = valid_beats.split
        @rate = rate
        @voice = voice
    end

    def append(nodes_string)
        nodes_array = nodes_string.split
        nodes_array.each do |node|
            if @valid_beats.include?(node)
                @list.append(node)
            else
                return "Error: input contains invalid beats"
            end
        end
    end

    def prepend(nodes_string)
        nodes_array = nodes_string.split
        nodes_array.each do |node|
            if @valid_beats.include?(node)
                @list.prepend(node)
            else
                return "Error: input contains invalid beats"
            end
        end
    end

    def count
        @list.count
    end

    def play
        beat = @list.to_string
        `say -r #{rate} -v #{voice} #{beat}`
    end
end