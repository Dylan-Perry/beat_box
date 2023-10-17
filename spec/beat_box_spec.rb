require "pry"
require "./lib/node.rb"
require "./lib/linked_list.rb"
require "./lib/beat_box.rb"

describe BeatBox do

    it "exists" do
        list = LinkedList.new
        bb = BeatBox.new(list)

        expect(bb).to be_a BeatBox
    end

    it "appends individual nodes" do
        list = LinkedList.new
        bb = BeatBox.new(list)
        bb.append("deep doo ditt")

        expect(bb.list.head).to be_a Node
        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node).to be_a Node
        expect(bb.list.head.next_node.data).to eq("doo")
    end
end