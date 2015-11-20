# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input?
# array of numbers/strings
# What is the output? (i.e. What should the code return?)
# item that appears the most OR if equal freq, all of those
# What are the steps needed to solve the problem?

=begin

create hash based on key/value pairs
    each item is assigned to a key
    unless key already has that name
        increment by one
        that increment becomes value

sort hash by values

create array from keys that are big nums

=end
=begin
# 1. Initial Solution
def mode(array)
  array_counter = Hash.new 
  array.each do |item|
    if array_counter.has_key?(item)
      array_counter[item] += 1
    else
      array_counter[item] = 1
    end
  end
  hey_i_like_that = []
    array_counter.each do |key,value|
      if value == array_counter.values.max
        hey_i_like_that << key
      end
    end
  return hey_i_like_that
end
=end


# 3. Refactored Solution
 def mode(array)
  array_counter = Hash.new
  array.each do |item|
    if array_counter.has_key?(item)
      array_counter[item] += 1
    else
      array_counter[item] = 1
    end
  end
  hey_i_like_that = []
    array_counter.each do |key,value|
        hey_i_like_that << key if value == array_counter.values.max
    end
  return hey_i_like_that
end


# 4. Reflection

=begin
What data structure did you implement and why?
  We went with a hash for organizing all of the items by how many times they appeared in the original array. This allowed us to keep track of the number of times an item appeared and link that to the item's name while also eliminating the potential for duplication of the same item at the key level. 
Were you more sucessful pseudocoding?
  Definitely. I was not the driver for the pseudocoding portion of this challenge, but we really feel into a groove and were able to quickly describe how the program would function. It aligned perfectly with our final solution and provided a strong blueprint to follow. 
What issues/successes did we run into translating the psedocode?
  We had some difficulty figuring out the order that operations should occur within our code blocks. We actually got this right intuitively during pseudocoding, but we began to second-guess ourselves as we moved on to the actual coding. I think that we would have been more successful if we had stuck to our original pseudocode structure completely before testing and then mmoving forward to squash any issues. Instead, we sort of rushed into making changes prior to testing. 
What methods did we use to iterate through the content?
  We were very reliant on each to get through the content and identify which items were recurring in the arrays. We also used .values.max to find the greatest values in our hash and add their corresponding keys to an array that we could return as a solution. 
  
  
=end
