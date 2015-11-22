class Die
	def initialize(side_count)
		@side_count = side_count
		if side_count < 1
			raise ArgumentError
		end
	end

	def sides
		@side_count.to_i
	end

	def roll
		die_choices = (1..@side_count).to_a
		die_choices.shuffle!
		return die_choices[1]
	end
end

####DRIVER CODE

#p die = Die.new(-1)