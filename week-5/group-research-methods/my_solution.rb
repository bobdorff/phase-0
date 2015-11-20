# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(array, number) 
  array.map! {|item| 
    if item.is_a? Integer
     item + number
    else item
  end
}
end


def my_hash_modification_method!(hash, number)
  hash.each {|key, value| hash[key] = value + number}
end

# Identify and describe the Ruby method(s) you implemented.
#   Hey folks! I _think_ I did this correctly, it passes rspec tests, but I may have been too simplistic or not used the right types of methods. In any case, I went with map! for going through the first array. The non-destructive version of map creates a new array from the results of performing a code block on each item in an array. I used the destructive one to create the new array in place. I also used the is_a? method, which checked to see if the item being mapped in the array was an integer. That let me avoid adding a number to every item in the array. 
#   For the second release, I just used an each iterator to go through the hash. Along the way, I assigned a new value to each key in the hash using the supplied data. Super-duper simplistic. 
# => Teach people how to use these methods
#   The methods I used to work through this are relatively basic, but I will talk about the difference between map and each. Map creates a new array from the calculations outlined in the code block that are peformed on each item in the array. That wouldn't work for this, because it needed to be destructive, so I used the bang version of map to modify the items in the array in place. With my each method for the hash, I iterated through each key and gave those keys a new value. There can only be one of each key, so giving the key a new valuealters the value associated with that key permanently.
# => Tricks for Ruby Docs
#   No tricks, really, just using the browser's find function within the documentation, reading up on what I'm interested in and cross-checking with the Well Grounded Rubyist. I think that the Ruby Docs for Newbs article was also really helpful. Irb is a terrific tool here, just to make sure that what you're thinking might work actually does. 

# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#