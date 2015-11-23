=begin
def acct_groups(cohort)
	groups_array = []
	cohort_array = cohort.split(",") 
	cohort_array.shuffle!
	headcount = cohort_array.size
		if headcount < 6
		puts "Too few students to sort!"
		elsif headcount == 6 
		cohort_array.each_slice(3) do |three_person|
		groups_array.push(three_person)
		end
		elsif headcount == 9
  		cohort_array.each_slice(3) do |three_person|
		groups_array.push(three_person)
		end
		elsif headcount <= 8
 		cohort_array.each_slice(4) do |four_person|
		groups_array.push(four_person)
		end
		elsif  headcount % 5 == 0 
  			cohort_array.each_slice(5) do |five_person|
			groups_array.push(five_person)
			end	
  		elsif headcount % 4 == 0 
  			cohort_array.each_slice(4) do |four_person|
			groups_array.push(four_person)
			end		
		else	
			cohort_array.each_slice(5) do |five_person|
			groups_array.push(five_person)
			end
			
			while groups_array.last.size < 3
			groups_array.last.push(groups_array[0][0])
			groups_array[0].shift
			groups_array.last.push(groups_array[1][0])
			groups_array[1].shift
			end
		end

	num = 0
	groups_hash = Hash.new
	groups_array.each do |team| 
		groups_hash[num += 1] = team 
	end
	
	return groups_hash
end
=end

#WELCOME TO THE REFACTORY
def acct_groups(cohort)
	groups_array = []
	cohort_array = cohort.split(", ").shuffle!
	headcount = cohort_array.size
		if headcount < 6
			puts "Too few students to sort!"
		elsif headcount == 6 || headcount == 9
			cohort_array.each_slice(3) { |three_person|	groups_array.push(three_person) }
		elsif headcount <= 8 || headcount % 4 == 0
 			cohort_array.each_slice(4) { |four_person| groups_array.push(four_person) }
		elsif  headcount % 5 == 0 || headcount >= 11
  			cohort_array.each_slice(5) { |five_person| groups_array.push(five_person) }		
		while groups_array.last.size < 3
			groups_array.last.push(groups_array[0][0]); groups_array[0].shift
			groups_array.last.push(groups_array[1][0]); groups_array[1].shift
		end
		end
	groups_hash = Hash.new
	num = 0
	groups_array.each { |team| groups_hash[num += 1] = team }
	return groups_hash
end
 
###DRIV3R COD3
p acct_groups("Jerry Cuevero, Lobos Lobot, Jose Metro, Captain Mamet, Benjamin Shpringer, Calvin Lang, Caroline Kenworthy, Donald Trump, Timbo Calzone, Licorice Dimple, Local Ache, Joey Ramone, Lip Balm, Berto Opense, Balto Brecken, Kendrick Rebar, Salmon Ruskie")

=begin
	
What was the most interesting and difficult part of this challenge?
	In many ways, deciding to stop working. I had a lot of trouble with the challenge, both as a result of stupid typos and because I conceptualized some of it poorly. I want this thing to be a program that anyone could use to sort names for groups like this, but it became evdient to me pretty quickly that I couldn't make something that was as user friendly as I wanted. At some point I had to settle for a program that will cope well with a specific type of input and deliver the desired results in a bare bones way. 
Am I an improved pseudocoder?
	Immensely! Like, oh. my. god. I am so much better at breaking down the individual parts of the problem and figuring out exactly what I need to get from each part. This challenge was a real breakthrough for me, I used comments to sort of keep my pseudocode in the actual program for placeholder chunks in areas I would work on later. I was also much better at testing my code as I went this time, and the result was a smoother process overall, despite my many setbacks while writing!
Was my approach good?
	Kind of! I get a randomized result every time and everyone will end up in a group that's got at least three people. It even prioritizes putting people in groups of 4, so that's cool! I think that problems with this program have less to do with my approach and more to do with my own lack of knowledge. It currently doesn't present the info in a very appealing way, though it is hashed for easy retreival of an individual team. Also, it demands that the information come in a very specific form before it can be sorted. That's lame.
What data structure stores the groups?
	A hash. That way I am able to number each group and retrieve it using a hash key. I guess I could do that with an array, but this system means that the number one will always refer to accountability group one. 
What did I learn in refactoring?
	Refactoring on this one was all about eliminating repetition and compressing things down. I repeated myself all over the place in my initial solution because I walked through my pseudocode's many steps very literally. In refactoring, I crammed all that repetition into a few expressions and cleaned up syntax all over the place. I think that refactoring on this challenge taught me that it's fine to repeat yourself on the route to a MVP. Once you're there you can cut that stuff out. 
=end
