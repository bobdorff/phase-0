# This pad is reserved for a student in the Chorus Frogs cohort. 


# Your Names
# 1)
# 2)
# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.
#define a method called serving_size_calc, takes two arguments
def serving_size_calc(item_to_make, order_quantity)
  ##hash called library, 
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  ##variable called error_counter, set to three
  #error_counter = 3
  #library.each do |food|
   # if library[food] != library[item_to_make]
      ## serving_size_calc("pie", 7)
      ## library[food] != library["pie"]
    #  p error_counter += -1
    #end
  # end

  #if error_counter > 0
  if library.include?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #assign var serving_size to get the value of the key matching item_to_make
  serving_size = library[item_to_make]
  #assign var serving_size_mod to 
  serving_size_mod = order_quantity % serving_size
  ## serving_size_calc("pie", 8)
  ## want 8 pies
  ## serving size = 7
  ## 8%7 = 1
  

  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  elsif serving_size_mod.between?(1,4)
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: #{serving_size_mod} cookies."
  end
  
   # return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: "
  #end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
#  Reflection
=begin
	
	
end