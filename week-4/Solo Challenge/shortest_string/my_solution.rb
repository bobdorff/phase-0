def shortest_string(array)
	if array.length == 0
		return nil
	elsif array.length == 1
		return array[0]
	elsif array.length >= 2
		array.sort_by {|string| string.length}
			   return array [0]
		
	end
end
