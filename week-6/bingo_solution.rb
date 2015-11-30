# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here
=begin
  
PSEUDOCODE
Input: prepopulated bingo board
Output: Bingo board with correct numbers replaced by 'x'
STEPS
1. Create a method called "call"
1a. Method 'call' contains a hash and an array
1b. "Call's" hash consists of keys BINGO valued at 0-4
1c. "Call's" array is a range of numbers from 1-100
1d. When 'call' gets called, it pulls a random key from hash and a random number from the array

2. Using the value of the hash key to pick the proper array from the bingo board, compare array number to numbers listed in that array
2a. If number is a match, replace that number with 'x' in place.

3. print the bingo board so that each array is on a newline. Maybe reconfigure into a hash so it displays letters for each line as a hash key?
  
=end

# Initial Solution


# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here
=begin
  
PSEUDOCODE
Input: prepopulated bingo board
Output: Bingo board with correct numbers replaced by 'x'
STEPS
1. Create a method called "call"
1a. Method 'call' contains a hash and an array
1b. "Call's" hash consists of keys BINGO valued at 0-4
1c. "Call's" array is a range of numbers from 1-100
1d. When 'call' gets called, it pulls a random key from hash and a random number from the array

2. Using the value of the hash key to pick the proper array from the bingo board, compare array number to numbers listed in that array
2a. If number is a match, replace that number with 'x' in place.
2b. Transpose the arrays so the columns are rows in accordance with the way bingo boards are set up.
3. print the bingo board so that each array is on a newline. 
=end

# Initial Solution

# class BingoBoard

# attr_accessor :bingo_board
# attr_accessor :letter_array
# attr_accessor :number_array
# attr_accessor :letter_hash
# attr_accessor :bingo_letter
# attr_accessor :bingo_number

#   def initialize(board)
#     @bingo_board = board
#     @letter_array = [ "B", "I", "N", "G", "O" ]
#     @number_array = (1..100).to_a
#     @letter_hash = { 
#     "B" => 0,
#     "I" => 1,
#     "N" => 2,
#     "G" => 3,
#     "O" => 4,
#   }
#     @bingo_letter = nil
#     @bingo_number = nil
#   end


#   def call
#    @bingo_board[2][2] = "FREE"
#    @bingo_letter = @letter_hash[@letter_array.sample]
#       if @bingo_letter == 0
#         @bingo_number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].sample
#       elsif @bingo_letter == 1
#         @bingo_number = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30].sample
#       elsif @bingo_letter == 2
#         @bingo_number = [31,32,33,34,35,36,37,38,39,40,41,42,43,44,45].sample
#       elsif @bingo_letter == 3
#         @bingo_number  = [46,47,48,49,50,51,52,53,54,55,56,57,58,59,60].sample
#       else
#         @bingo_number = [61,62,63,64,65,66,67,68,69,70,71,72,73,74,75].sample
#       end
#   end


#   def check
#   @bingo_board[@bingo_letter].map! do |check_num|
#     if check_num == @bingo_number
#     check_num = "X"
#     else
#       check_num
#     end 
#   end


#   def puts_board
#   puts @bingo_board.transpose[0].to_s 
#   puts @bingo_board.transpose[1].to_s 
#   puts @bingo_board.transpose[2].to_s
#   puts @bingo_board.transpose[3].to_s
#   puts @bingo_board.transpose[4].to_s 
#   end
#  end

# end


# REFACTORPALOOZA 2015

class BingoBoard

attr_accessor :bingo_board, :letter_array, :number_array, :letter_hash, :bingo_letter, :bingo_number

  def initialize(board)
    @bingo_board = board
    @letter_array = [ 0, 1, 2, 3, 4 ]
    @letter_hash = { 
    0 => "B",
    1 => "I",
    2 => "N",
    3 => "G",
    4 => "O",
  }
    @bingo_letter = nil
    @bingo_number = nil
  end

  def call
   @bingo_letter = @letter_array.sample
   p @letter_hash[@bingo_letter]
      if @bingo_letter == 0
        @bingo_number = (1..15).to_a.sample
      elsif @bingo_letter == 1
        @bingo_number = (16..30).to_a.sample
      elsif @bingo_letter == 2
        @bingo_number = (31..45).to_a.sample
      elsif @bingo_letter == 3
        @bingo_number  = (46..60).to_a.sample
      else
        @bingo_number = (61..75).to_a.sample
      end
  end

  def check
  @bingo_board[@bingo_letter].map! { |check_num| check_num == @bingo_number ? check_num = "X" : check_num }   
  end

  def puts_board
  puts @bingo_board.transpose[0].to_s 
  puts @bingo_board.transpose[1].to_s 
  puts @bingo_board.transpose[2].to_s
  puts @bingo_board.transpose[3].to_s
  puts @bingo_board.transpose[4].to_s 
  end
end

def tru_board
  @board = [
    (1..15).to_a.sample(5), 
    (16..30).to_a.sample(5), 
    (31..45).to_a.sample(5), 
    (46..60).to_a.sample(5),
    (61..75).to_a.sample(5),
  ]
  @board[2][2] = "FREE"   
end

 tru_board
 new_game = BingoBoard.new(@board)
 p new_game.call
 new_game.check
 new_game.puts_board

=begin
#Reflection
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  I found it relatively easy to pseudocode this challenge, though my style is constantly evolving and improving. I am getting better at breaking up problems and creating multi-step solutions at the pseudocoding stage, which makes it signifcantly easier to figure out where problems lie once I actually start programming.
What are the benefits of using a class for this challenge?
  Using a class allows me to create a system that generates randomized boards. I can then plug those randomized boards into the class and still have everything function. Using a class makes the methods I created more flexible, because I can change what gets fed to them. 
How can you access coordinates in a nested array?
  You can access the information deep within an nested array by using the index for the top-level array you want to access and then using the index for the information you want to pull out of the subarrays.
What methods did you use to access and modify the array?
  I used #map and #sample in this challenge. Map is a great tool, I use it all the time to efficiently modify arrays in place. Sample was useful because so much of this challenge focused on random number generation. I also used #to_s to make my output pretty.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  Transpose! I found it and it changed how I approached the challenge. It regroups nested arrays based on their index numbers, which was perfect for this challenge. I was able to use it to reformat the information after I had already done the heavy lifting of modifying each array. 
How did you determine what should be an instance variable versus a local variable?
  Instance variables were used whenever I needed to access the information in a method that did not generate that information. Whenever data gets passed around, I had to use an instance variable.
What do you feel is most improved in your refactored solution?
  Readability and clutter. I got rid of a lot of unncessary numbers by using ranges and cleaned up the structure overall. I also made it actually output a letter number combination.
=end