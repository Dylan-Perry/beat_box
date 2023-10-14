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
        require 'pry'; binding.pry
    end
end