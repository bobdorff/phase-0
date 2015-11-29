# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digits
# Output: Boolean value true if it's a valid credit card 
# Steps:
# 1. Every other number except the last number gets doubled
# 2. Split double digit numbers into individual digits
# 3. Sum all doubled digits and add individual digits from two digit numbers
# 4. Check if sum is evenly divisible by ten.
# 5. Return true if sum is evenly divisible by 10

# Initial Solution



# class CreditCard
  
#   def initialize(digits)
#   @number = digits.to_s.split('').map {|number| number.to_i}
#   raise ArgumentError if @number.size != 16
#   end

#   def double_every_other
#     digit = 0
#     while digit < 15
#       @number[digit] *= 2
#       digit += 2
#     end
#   end
    
#   def split_doubles
#     @number = @number.join.to_s.split('').map {|x| x.to_i}
#   end
    
#   def sum_all
#     @total = 0
#     @number.each { |item| @total += item }
#   end
    
#   def check_card
#     double_every_other
#     split_doubles
#     sum_all
#     @total % 10 == 0
#    end
# end

# LET ME REFACTOR THAT FOR YOU
class CreditCard
  
  def initialize(digits)
    @total = 0
    @number = digits.to_s.chars.map {|split_number| split_number.to_i }
    raise ArgumentError if @number.size != 16
  end

  def double_every_other
    index = 0
    while index < 15
      @number[index] *= 2
      index += 2
    end
  end
    
  def split_doubles
   @number = @number.join.to_s.chars.map {|split_number| split_number.to_i }
  end
   
  def sum_all
    @number.each { |item| @total += item }
  end
    
  def check_card
    double_every_other; split_doubles; sum_all
    @total % 10 == 0
   end
end


# Reflection
# What was the most difficult part of this challenge for you and your pair?
#  We struggled for too long because we didn't realize we would have to call all the individual methods as part of check_card. We actually had a workable solution very early in the process, thanks to our psedudocoding, but it wouldn't output correctly because we weren't running the right methods :P.
# What new methods did you find to help you when you refactored?
#  The "char" method, which breaks apart a string into individual characters and puts them into an array. I used it where we were previously using "split" because it was sort of clunky to specify we wanted to split on the lack of space between characters. 
# What concepts or learnings were you able to solidify in this challenge?
# I really need to keep the ability to use methods inside other methods in mind. It's sort of hard for me to wrap my mind around all the possibilities that this makes available, and I can sometimes forget how simple it is to call the method I need inside another method. At the same time, some stuff still remains confusing. I'm not sure why I have to specify that @number should be equal to a new value in the #split_doubles. It feels like I should be able to map! that in place, but doing so doesn't work right...
