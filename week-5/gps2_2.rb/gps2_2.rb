 #This pad is reserved for a student in the Chorus Frogs cohort. 
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # [fill in any steps here]
 # set default quantity = 1
 # seperate the input string by the spaces
 # assign each item to the hash which sets default value
 # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity (set default value = 1)
# steps: set list[item] = quantity
# output: return list hash

# Method to remove an item from the list
# input: name of item to be deleted
# steps: list[item].delete
# output: list hash

# Method to update the quantity of an item
# input: input = existing item key and new quantity
# steps: lsit[item] = new quantity
# output: list hash

# Method to print a list and make it look pretty
# input: list hash
# steps: take each item on the list hash and print each item : quantity on a new line
# output: printed list

# # list_hash = Hash.new(1)
# def create_list (string)
#   list_hash = Hash.new(1)
#   list_array = string.split(" ")
#   list_array.each do |item|
#     list_hash[item] = 1 
#   end
#   # print_list(list_hash)
#   return list_hash
# end

# def add_item(list, item, quantity = 1)
#   list[item] = quantity
#   return list
# end

# def remove_item(list, item)
#   # list_hash[item].delete
#   list.delete(item)
#   return list
# end

# def update_item(list, item, quantity)
#   list[item] = quantity
#   return list
# end

# def print_list(list)
#   list.each do |item, quantity|
#     puts item + ": " + quantity.to_s
#   end
# end


# ## DRIVER CODE

# p katys_list = create_list("banana")

# p add_item(katys_list, "apple")

# print_list(katys_list)

# p remove_item(katys_list, "apple")

# p update_item(katys_list, "banana", 16)
# #


def create_list (string)
 list_hash = Hash.new
 list_array = string.split(" ")
 list_array.each do |item|
   add_item(list_hash, item)
 end
 print_list(list_hash)
 return list_hash
end

def add_item(list, item, quantity = 1)
 list[item] = quantity
 return list
end

def remove_item(list, item)
 list.delete(item)
 return list
end

def update_item(list, item, quantity)
 list[item] = quantity
 return list
end

def print_list(list)
 list.each do |item, quantity|
   puts item + ": " + quantity.to_s
 end
end


## DRIVER CODE

p katys_list = create_list("banana")

#p add_item(katys_list, "apple")

#print_list(katys_list)

#p remove_item(katys_list, "apple")

p update_item(katys_list, "banana", 16)

=begin

What did you learn about pseudocode from this challenge?
I'm still trying to find the type of pseudocoding that works best for me. I think the process is invaluable, but I always run into trouble during pseudocode by being either too technical or not technical enough.
What are the tradeoffs between arrays and hashes?
Hashes let you have whatever you want for indexes while arrays are indexed numerically according to the order of items in the group. 
What do methods return?
Methods return the last statement in the code you write, so you don't need to set an explicit return unless you want to return something different. 
What can you pass to methods and arguments?
You can pass nearly anything to a method as an argument. That includes strings, integers, floats, hashes and arrays. 
How do you pass info between methods?
Information gets transferred between methods through arguments. A method can be told to expect certain data when it is run. You then grab that information and feed it into the method so that it can manipulate that info. 
What concepts were solidified, which are still confusing?
I am still confused by a lot, but the things I find most confusing were cleared up a little by this challenge. I still struggle with scope for different variables, and I am still learning about default values for arguments and what that means for a method's expectated inputs. 
=end
