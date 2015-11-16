# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
	combined_array=Array.new
	combined_array.push(array_1, array_2)
	return combined_array.flatten
end