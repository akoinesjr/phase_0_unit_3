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

	answer=''

	if num==100
		puts "One hundred"
		
	else
		num = num.to_s.split("")
		
		if num.length==1
			case num[0]
			
			when "1"
				puts "One"
			when "2"
				puts "Two"
			when "3"
				puts "Three"
			when "4"
				puts "Four"
			when "5"
				puts "Five"
			when "6"
				puts "Six"
			when "7"
				puts "Seven"
			when "8"
				puts "Eight"
			when "9"
				puts "Nine"
			end		

		elsif num[0]==1
			


		end

	end

end




in_words(100)
in_words(1)
in_words(6)


# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






# 5. Reflection 