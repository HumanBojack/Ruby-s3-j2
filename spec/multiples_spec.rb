require_relative "../lib/multiples.rb"

describe "the is_multiple_of35 method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of35(3)).to eq(true)
    expect(is_multiple_of35(5)).to eq(true)
    expect(is_multiple_of35(51)).to eq(true)
    expect(is_multiple_of35(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
  	expect(is_multiple_of35(2)).to eq(false)
  	expect(is_multiple_of35(4)).to eq(false)
  	expect(is_multiple_of35(11)).to eq(false)
  	expect(is_multiple_of35(13)).to eq(false)
  end
end

describe "the sum_of_35" do
	it "should return the sum of the multiples of 3 and 5 between 0 and the final number" do
		expect(sum_of_35(10)).to eq(23)
		expect(sum_of_35(11)).to eq(33)
		expect(sum_of_35(0)).to eq(0)
	end

	it "should return an error when a number is not an integer" do
		expect(sum_of_35(1.4)).to eq("Your entry is not an integer")
	end
end