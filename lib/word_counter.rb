dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
dictionnary2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
def word_counter(corpus, dictionnary)
render = {}	
split_corpus = corpus.downcase.split(/\W+/)
	split_corpus.each do |word|
		if render[word] == nil && dictionnary.include?(word) == true
			render[word] = 1
		elsif dictionnary.include?(word) == true
			render[word] += 1
		end 
	end
	return render
end


#For Shaekspeare
# => You have to run this from the root (not from lib), with $ ruby lib/word_counter.rb , otherwise it wont work
insults = File.read("lib/insults.txt").split(/\W+/)
puts word_counter(File.read("lib/shaekspeare.txt"), insults)