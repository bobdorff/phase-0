def factorial(number)
  if number == 0
    return 1
  elsif number == 1
    return 1
  elsif number > 1 
    product = number
    while number > 1 do  
     number -=1
     product *= number 
   end
    return product
  end      
end