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



 
 

  #	else
  		#INCLUDE SLICE BY 5 METHOD, INCLUDING CODE TO PREVENT GROUPS < 3
  #	end
 














###DRIV3R COD3
p acct_groups(" Liquid Lobos, Jose Metro, Benjamin Shpringer, Bob Dorff, Calvin Lang, Caroline Kenworthy, Donald Trump, Timbo Calzone, Licorice Dimple, Local Ache, Joey Ramone, Lip Balm, Berto Opense, Balto Brecken, Kendrick Rebar")


=begin

Dana Breen,
David Diaz,
David Ma,
Gary Tso,
Hanah Yendler,
Jack Abernethy,
Jenna Espezua,
Joe Plonsker,
Jonathan Huang,
Joseph Scott,
Katherine DiAngelo,
Kerry Choy,
Lindsey Stevenson,
Luis De Castro,
Lydia Nash,
Mason Pierce,
Matthew Oppenheimer,
Max Davis,
Michael Du,
Mira Scarvalone,
Mohammad Amin,
Monique Williamson,
Nick Davies,
Nicolette Chambers,
Paul Dynowski,
Philip Thomas,
Raj Vashist,
Regina Wong,
Reuben Brandt,
Saundra Vanessa Castaneda,
Sean Fleming,
Sean Massih,
Steven Jones,
Susan Savariar,
Thomas Huang,
Ting Wang,
Tom McHenry,
Yi Lu,
Zollie Barnes,
Caroline Kenworthy")
=end
