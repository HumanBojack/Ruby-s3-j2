require_relative "../lib/caesar_cipher.rb"

describe "the caesar_cipher method" do
	it "should answer a sentance crypted with our key" do
		expect(caesar_cipher("Bonjour a tous !", 3)).to eq("Erqmrxu d wrxv !")
		expect(caesar_cipher("Nik la police tfason", 5)).to eq("Snp qf utqnhj ykfxts")
		expect(caesar_cipher("Ma musique preferee ? La zoubida", 12)).to eq("Ym ygeucgq bdqrqdqq ? Xm lagnupm")
	end

	it "convert every letter indivudally" do
		expect(each_letter("m", 4)).to eq("q")
		expect(each_letter("M", 5)).to eq("R")
		expect(each_letter("x", 3)).to eq("a")
		expect(each_letter("!", 3)).to eq("!")
	end
end