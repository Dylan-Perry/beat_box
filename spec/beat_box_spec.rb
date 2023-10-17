require "pry"
require "./lib/node.rb"
require "./lib/linked_list.rb"
require "./lib/beat_box.rb"

describe BeatBox do

    it "exists" do
        bb = BeatBox.new

        expect(bb).to be_a BeatBox
    end

    it "appends individual nodes" do
        bb = BeatBox.new
        bb.append("deep doo ditt")

        expect(bb.list.head).to be_a Node
        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node).to be_a Node
        expect(bb.list.head.next_node.data).to eq("doo")
    end

    it "counts the number of nodes" do
        bb = BeatBox.new
        bb.append("deep doo ditt")

        expect(bb.count).to eq(3)
    end

    it "plays the sounds" do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        bb.play
    end

end