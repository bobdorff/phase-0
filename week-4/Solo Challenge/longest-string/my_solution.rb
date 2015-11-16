# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
	if list_of_words.size == []
		return nil
	elsif list_of_words.size == 1
		return list_of_words[0]
	elsif list_of_words.size >= 2
		list_of_words.sort_by! {|word| word.length}
		return list_of_words.last
	end
end