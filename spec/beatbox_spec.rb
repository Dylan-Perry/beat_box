require "pry"
require "./lib/node.rb"
require "./lib/linkedlist.rb"
require "./lib/beatbox.rb"

describe BeatBox do

    it "exists" do
        list = LinkedList.new
        bb = BeatBox.new(list)

        expect(bb).to be_a BeatBox
    end
end