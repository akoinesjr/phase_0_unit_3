# U3.W8-9: Reverse Words


# I worked on this challenge by myself.

# 2. Pseudocode

=begin

Define a function called reverse_words that takes a string as an argument
	Split the string into an array
	Reverse each element in the array
	Join the elements into a new string
End	

=end

# 3. Initial Solution

def reverse_words(str)
  str=str.split(" ")
  str.map! do |str|
    str.reverse!	
  end
  str.join(" ")
end


# 4. Refactored Solution



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

def random_word(length = 5)
  rand(36**length).to_s(36)
end

#does nothing to an empty string
assert{ reverse_words("") == ""}

#reverses a single word
word=random_word
assert{reverse_words(word)==word.reverse}

#reverses two words
word1 = random_word
word2 = random_word
assert{reverse_words("#{word1} #{word2}") == "#{word1.reverse} #{word2.reverse}"}

#reverses an entire sentence
assert{reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB"}


# 5. Reflection 

#I was able to complete this exercise fairly easily. At one point I got stuck because
#I was splitting the strings on every character rather than between words, but I
#quickly noticed and corrected this error.