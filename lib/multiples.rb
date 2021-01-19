def is_multiple_of35(input)
	(input % 3 == 0 || input % 5 == 0) ? (true) : (false)
end

def sum_of_35(input)
	(input.is_a? (Integer)) ? () : (return "Your entry is not an integer")
sum = 0

	input.times do |current_number|
		(is_multiple_of35(current_number) == true) ? (sum += current_number) : ()
	end
	
return sum
end
