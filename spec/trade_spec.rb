require_relative "../lib/trade.rb"
describe "A program that tells you when to buy and to sell" do |_|
	it "should compare a number with the numers before and find the biggest difference" do
		expect(compare([17, 3, 6, 9, 15, 8, 6, 1, 10], 4)).to eq(12)
		expect(compare([17, 3, 6, 9, 4, 8, 6, 1, 17], 8)).to eq(16)
	end

	it "should return when to buy and to sell" do
		expect(wtbwts([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
		expect(wtbwts([17, 9, 6, 1, 5, 8, 6, 11, 1])).to eq([3,7])
	end
end