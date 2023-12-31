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

    it "prepends individual nodes" do
        bb = BeatBox.new
        bb.prepend("doo ditt")

        expect(bb.list.head).to be_a Node
        expect(bb.list.head.data).to eq("ditt")
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

    it "only allows validated beats to be appended or prepended" do
        bb = BeatBox.new

        expect(bb.append("mississippi")).to eq("Error: input contains invalid beats")
        expect(bb.prepend("mississippi")).to eq("Error: input contains invalid beats")
    end

    it "accepts inputs for rate and voice" do
        bb = BeatBox.new(valid_beats = "tee dee deep bop boop la na ditt doo mississippi", rate = 500, voice = "boing")
        bb.append("mississippi deep doo ditt tee dee deep boop bop la na ditt mississippi mississippi")
        bb.play
    end

    it "resets rate and voice variables" do
        bb = BeatBox.new(valid_beats = "tee dee deep bop boop la na ditt doo mississippi", rate = 500, voice = "boing")
        bb.append("mississippi deep doo ditt tee dee")
        bb.reset_rate
        bb.reset_voice
        bb.play
    end
end