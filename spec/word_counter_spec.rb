require_relative "../lib/word_counter.rb"

describe "It will send an hash filled with words and the number of occurences" do |_|
	it "will send back a hash" do
		expect(word_counter("below low", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to eq({"below"=>1, "low"=>1})
		expect(word_counter("Howdy partner, sit down! How's it going?", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to eq({"howdy"=>1, "partner"=>1, "sit"=>1, "down"=>1, "how"=>1, "it"=>1, "going"=>1})
	end
end