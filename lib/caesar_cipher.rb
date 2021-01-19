def each_letter(letter, code)
	case letter.ord
		when (97..122)
			ord = letter.ord + code	
			ord = 96 + (ord - 122) if ord > 122
		when (65..90)
			ord = letter.ord + code
			ord = 64 + (ord - 90) if ord > 90
		else
			ord = letter.ord
	end
	return ord.chr
end
def caesar_cipher(sentance, code)
sentance.each_char.map {|e|each_letter(e, code)}.join
end