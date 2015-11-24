# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |number|
  if number.is_a? Array
    number.map! do |inner_number|
      inner_number += 5
    end
  else
    number += 5
  end
end
print number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! do |word|
#   if word.is_a? Array
#     word.map! do |inner_word|
#       if inner_word.is_a?(Array)
#         inner_word.map! do |inner_inner_word|
#           inner_inner_word += "ly"
#         end
#       else
#         inner_word += "ly"
#       end
#     end
#   else
#     word += "ly"
#   end
# end


def add_ly(word)
  if word.is_a?(Array)
    word.map! do |word2|
      add_ly(word2)
    end
  else
    word += "ly"
  end
end

startup_names.map! do |word|
  add_ly(word) 
end
p startup_names

# REFLECTION
# What are some general rules you can apply to nested arrays?
# 	Not sure what the question means by "general rules", but it's worth understanding that anything inside a nested array can be accessed and/or changed in place. That means you can maintain these complex data structures throughout modification, which may be helpful for certain types of programs, I'd expect.
# What are some ways you can iterate over nested arrays?
# 	You can iterate over a nested array exactly as you'd iterate through a flat array. In either case, you are calling methods like .each and other enumerables that will work through the array one item at a time. By nesting enumerable method calls inside other enumerable method calls you can reach any information in the nested arrays.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# 	We used map! because it was an easy way to modify the information in place. I was already familiar with it, but it seemed like the best tool for the job!
