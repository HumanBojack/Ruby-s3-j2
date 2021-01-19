def compare(array, nb_index)
min = array[0]
	(nb_index).times do |number|
		if array[number] < min
			min = array[number]
		end
	end
	return array[nb_index] - min
end

def wtbwts(array)
	max, max_id, min_id = 0
		array.each_with_index do |element, ind|
			if compare(array, ind) > max
				max = compare(array, ind)
				max_id = ind
			end
		end
	min = array[0]
	(max_id).times do |id|
		if array[id] < min
			min_id = id	
			min = array[id]
		end
	end
	return min_id, max_id
end
