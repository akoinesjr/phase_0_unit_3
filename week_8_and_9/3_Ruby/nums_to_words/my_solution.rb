# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

=begin

Define a function called in_words that takes a number from 1 to 100
as an argument.

Raise error if number is less than 1 or greater than 100

Set variable answer to an empty string

If number is 100, return "one hundred"

Else if the number is a single digit, return the appropriate number

Else split the number into an array of its component digits

	If the first digit is a 1, 
		Set "answer" to the appropriate value
	If the first digit is a 2, add "twenty" to answer
	If the first digit is a 3, add "thirty" to answer
	If the first digit is a 4, add "forty" to answer
	If the first digit is a 5, add "fifty" to answer
	If the first digit is a 6, add "sixty" to answer
	If the first digit is a 7, add "seventy" to answer
	If the first digit is a 8, add "eighty" to answer
	If the first digit is a 9, add "ninety to answer"

	Add the value of the second digit to "answer"

Return answer

=end


# 3. Initial Solution

def in_words(num)
	raise ArgumentError, 'Number must be from 1 to 100' unless 0<num && num<=100

	translation = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
  10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
  17=>"seventeen", 18=>"eighteen",19=>"nineteen",
  20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety", 100=>"one hundred"}

	if num.between?(0,20) || num == 100
		return translation[num]
	
	else
		number_string=num.to_s[0]+"0"
		if num.to_s[1] != "0"
			ones_place=num.to_s[1]
			return translation[number_string.to_i] + " " + translation[ones_place.to_i]
		else
			return translation[number_string.to_i]
		end
end
end



# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

puts in_words(19) == "nineteen"
puts in_words(33) == "thirty three"
puts in_words(1) == "one"
puts in_words(100) == "one hundred"




# 5. Reflection 