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

    it "appends a node to an empty list" do
        list = LinkedList.new
        list.append("doop")

        expect(list.head).to be_a Node
        expect(list.head.data).to eq("doop")
    end

    it "appends a node to the end of a list" do
        list = LinkedList.new
        list.append("doop")
        list.append("snoop")

        expect(list.head).to be_a Node
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to be_a Node
        expect(list.head.next_node.data).to eq("snoop")
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

    it "prints an error when attempting to stringify an empty list" do
        list = LinkedList.new

        expect(list.to_string).to eq("Error: list contains no data.")
    end

    it "prepends the list with a node" do
        list = LinkedList.new
        list.prepend("doop")
        list.prepend("snoop")

        expect(list.head).to be_a Node
        expect(list.head.data).to eq("snoop")
        expect(list.head.next_node).to be_a Node
        expect(list.head.next_node.data).to eq("doop")
    end

    it "inserts a node in the list at a location after head node" do
        list = LinkedList.new
        list.append("doop")
        list.append("snoop")
        list.append("blarp")
        list.insert(1, "woo")

        expect(list.to_string).to eq("doop woo snoop blarp")
    end

    it "inserts a node in the list at head node (index 0)" do
        list = LinkedList.new
        list.append("doop")
        list.append("snoop")
        list.append("blarp")
        list.insert(0, "woo")

        expect(list.to_string).to eq("woo doop snoop blarp")
    end

    it "inserts a node into an empty list at head" do
        list_1 = LinkedList.new
        list_1.insert(0, "blarp")
        list_2 = LinkedList.new
        list_2.insert(3, "blarp")

        expect(list_1.to_string).to eq("blarp")
        expect(list_2.to_string).to eq("blarp")
    end


end
