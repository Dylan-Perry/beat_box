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
end