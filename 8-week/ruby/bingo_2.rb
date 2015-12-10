# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# 1. iterate through each of the arrays in the overarching array. if all are 'x' prints BINGO!





# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer

# 	def initialize(board)
# 		@bingo_board = board
# 		@test_array = []
# 	end
# 	def check
# 		@bingo_board.each do |array|
# 			array.each do |num|
# 				if num == 'x'
# 					@test_array << array.index(num)
# 				end
# 			end		
# 		end

# 		if @test_array.size == 5 && @test_array == [0,1,2,3,4]  || @test_array.uniq.size == [1]
# 			puts "BINGO!"
# 		elsif @test_array.size == 5 && @test_array == [4,3,2,1,0]
# 			puts "BINGO!"
# 		elsif @test_array.size == 5 &&  @test_array.uniq.size == 1
# 			puts "BINGO!"
# 		else 
# 			puts "NOT BINGO!"
# 		end
# 		p @test_array.uniq
# 	end
# end



# Refactored Solution

class BingoScorer

	def initialize(board)
		@bingo_board = board
		@test_array = []
	end
	def check
		@bingo_board.each do |array|
			array.each do |num|
				if num == 'x'
					@test_array << array.index(num)
				end
			end		
		end

		if @test_array.size == 5 && @test_array == [0,1,2,3,4] || @test_array == [4,3,2,1,0] || @test_array.uniq.size == 1
			puts "BINGO!"
		else 
			puts "NOT BINGO!"
		end
	end
end




# DRIVER TESTS GO BELOW THIS LINE
leftright = BingoScorer.new(left_to_right)
 rightleft = BingoScorer.new(right_to_left)
 horz = BingoScorer.new(horizontal)
 updown = BingoScorer.new(vertical)

leftright.check
rightleft.check
horz.check
 updown.check
# implement tests for each of the methods here:

