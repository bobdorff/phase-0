def smallest_integer(array)
		if  array == []
			return nil
		elsif array.length == 1
			return array[0]
		elsif array.length > 1
			array.sort!
			p array[0]
		end
end
	
