
// def is_fibonacci?(num)
// 	arr=[0,1]
//   	while num>arr[-1]
//   	arr << arr[-2]+arr[-1]
// end
//   	if num == arr[-1]
// 		return true
// end
// end

// U3.W8-9: Challenge you're converting


// I worked on this challenge 
//1. Andrew Koines Jr.
//2. Kendall Carey

// 2. Pseudocode
/*Define a method called is_fibonacci that takes a number as an argument
 determines if the number given is in the fibonacci sequence and returns true 
or false depending.

Create a variable arr that is an array with two e.lements, 0 and 1

While the number argument is greater than the last element in the array,
Push the sum of the last two elements in the array onto the array

Return true if number is equal to the last element in the array.


*/
// 3. Initial Solution

var arr=[0,1];

is_fibonacci=function(num) {		
  	while (num>arr[arr.length-1]) {
  		arr.push(arr[arr.length-2]+arr[arr.length-1]);
  	}
  if (num==arr[arr.length-1]) {
    return true;
  }
};

is_fibonacci(13);

// 4. Refactored Solution


// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE


console.log(is_fibonacci(13)==true);
console.log(is_fibonacci(14)==false);





// 5. Reflection 

