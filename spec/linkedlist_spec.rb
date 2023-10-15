require "pry"
require "./lib/node.rb"
require "./lib/linkedlist.rb"

describe LinkedList do

    it "exists" do
        list = LinkedList.new

        expect(list).to be_a LinkedList
    end

    it "defaults @head to nil" do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end

    it "appends a node" do
        list = LinkedList.new
        list.append("doop")

        expect(list.head).to be_a Node
        expect(list.head.data).to eq("doop")
    end

    it "shifts node to next_node when appending subsequent nodes" do
        list = LinkedList.new
        list.append("doop")
        list.append("snoop")

        expect(list.head).to be_a Node
        expect(list.head.data).to eq("snoop")
        expect(list.head.next_node).to be_a Node
        expect(list.head.next_node.data).to eq("doop")
    end

    it "counts the nodes" do
        list = LinkedList.new
        list.append("doop")
        list.append("snoop")
        list.append("blarp")

        expect(list.count).to eq(3)
    end

    it "prints the list to a string" do
        list = LinkedList.new
        list.append("doop")
        list.append("snoop")
        list.append("blarp")

        expect(list.to_string).to eq("doop snoop blarp")
    end
end