require "pry"
require "./lib/node.rb"

RSpec.describe Node do

    it "exists" do
        node = Node.new("plop")

        expect(node).to be_instance_of(Node)
    end

    it "populates @data with the argument and @next_node with nil" do
        node = Node.new("plop")

        expect(node.data).to eq("plop")
        expect(node.next_node).to eq(nil)
    end
end
