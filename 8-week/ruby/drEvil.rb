# Cipher Challenge
# I worked on this challenge by myself  
# I spent [#] hours on this challenge.
# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.


# # defines a method called dr_evils_cipher. The method takes one argument and assigns it to the variable "coded message"
# def dr_evils_cipher(coded_message)
# #code message is changed to lower case and each character is put into a new array as an individually indexed item. That array is assigned to the variable "input"
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
# #a variable, decoded sentence, is set equal to a new empty array
#   decoded_sentence = []
# # cipher is set equal to a hash that contains all the alphabets letters in key value pairs. Each key is a letter and the value is four letters prior to that letter.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
# "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
# "g" => "c",
# "h" => "d",
# "i" => "e",
# "j" => "f",
# "k" => "g",
# "l" => "h",
# "m" => "i",
# "n" => "j",
# "o" => "k",
# "p" => "l",
# "q" => "m",
# "r" => "n",
# "s" => "o",
# "t" => "p",
# "u" => "q",
# "v" => "r",
# "w" => "s",
# "x" => "t",
# "y" => "u",
# "z" => "v",
# "a" => "w",
# "b" => "x",
# "c" => "y",
# "d" => "z"}
# #Assigns each value in input to X assigns each key in cipher to y. Checks to see if x is equal to y. If so, it pushes the value associated with cipher[y] into the decoded_sentence array
#   input.each do |x| # What is #each doing here?
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#       cipher.each_key do |y| # What is #each_key doing here?
#         if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#           decoded_sentence << cipher[y]
#           found_match = true
#         break  # Why is it breaking here?
#         #inserts a space for each of these characters
#         elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#           decoded_sentence << " "
#           found_match = true
#         break

#         elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#           decoded_sentence << x
#           found_match = true
#         break
#         end
#       end
#       #if a match hasn't been found yet, simply add the item that's X
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
# #What is this method returning?
# end
# Your Refactored Solution
# defines a method called dr_evils_cipher. The method takes one argument and assigns it to the variable "coded message"
def dr_evils_cipher(coded_message)
#code message is changed to lower case and each character is put into a new array as an individually indexed item. That array is assigned to the variable "input"
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#a variable, decoded sentence, is set equal to a new empty array
  decoded_sentence = []
# cipher is set equal to a hash that contains all the alphabets letters in key value pairs. Each key is a letter and the value is four letters prior to that letter.
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
"f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
"g" => "c",
"h" => "d",
"i" => "e",
"j" => "f",
"k" => "g",
"l" => "h",
"m" => "i",
"n" => "j",
"o" => "k",
"p" => "l",
"q" => "m",
"r" => "n",
"s" => "o",
"t" => "p",
"u" => "q",
"v" => "r",
"w" => "s",
"x" => "t",
"y" => "u",
"z" => "v",
"a" => "w",
"b" => "x",
"c" => "y",
"d" => "z"}
#Assigns each value in input to X assigns each key in cipher to y. Checks to see if x is equal to y. If so, it pushes the value associated with cipher[y] into the decoded_sentence array
  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
      cipher.each_key do |y| # What is #each_key doing here?
        if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
          decoded_sentence << cipher[y]
          found_match = true
        break  # Why is it breaking here?
        #inserts a space for each of these characters
        elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
          decoded_sentence << " "
          found_match = true
        break
      end
      end
      #if a match hasn't been found yet, simply add the item that's X
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
#What is this method returning?
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")
# Reflection
# Keep your reflection limited to 10-15 minutes!