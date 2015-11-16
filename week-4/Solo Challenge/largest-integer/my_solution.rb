def largest_integer(array)
	if array.length == 0
		return nil
	elsif array.length == 1
		return array[0]
	elsif array.length > 1
		array.sort!
		return array.last 
	end
end