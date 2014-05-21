# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

=begin
	
DEFINE super_fizzbuzz function that takes an array as an argument

For each element in the array,
	If the element is divisible by 15, print fizzbuzz
	Else If the element is divisible by 3, print fizz
	Else If the element is divisible by 5, print buzz



END
	
=end


# 3. Initial Solution
=begin
def super_fizzbuzz(array)
  ans=[]
  array.each do |num|
    if num%15==0
      ans<< "FizzBuzz"
    elsif num%3==0
      ans<< "Fizz"
    elsif num%5==0
      ans<< "Buzz"
    else
      ans<<num
    end
  end
  return ans
end

=end

# 4. Refactored Solution

#Can be done more efficiently using map

def super_fizzbuzz(array)
  array.map! do |num|
    if num%15==0
      "FizzBuzz"
    elsif num%3==0
      "Fizz"
    elsif num%5==0
      "Buzz"
    else
      num
    end
  end
  return array
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

#should return 'Fizz' for multiples of 3
assert {super_fizzbuzz(random_input_array(3,100)) == ["Fizz"]*100}

#should return "Buzz" for multiples of 5
assert{super_fizzbuzz(random_input_array(5,100)) == ["Buzz"]*100}

#should return "FizzBuzz" for multiples of 15
assert{super_fizzbuzz(random_input_array(15, 100)) == ["FizzBuzz"]*100}

#should work on [1,2,3]
assert{super_fizzbuzz([1,2,3]) == [1,2,'Fizz']}

#should work on [15, 5, 3, 1]
assert{super_fizzbuzz([15, 5, 3, 1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1]}

# 5. Reflection 

=begin

This exercise was relatively simple as I've been working with Ruby quite regularly lately,
and also because I have implemented FizzBuzz several times in the past so I'm somewhat
familiar with the problem.
	
=end