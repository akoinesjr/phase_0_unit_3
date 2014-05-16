# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Andrew Koines
# 2. Ajay Singh
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to be able to create a new grocery list.
# As a user, I want to be able to add items to the list.
# As a user, I want to be able to be able to update the quantity for a given item.
# As a user, I want to be able to remove items to the list.
# As a user, I want to be able to show the items on the list.
# As a user, I want to be able to display the length of the list.
# 
 
# Pseudocode
=begin
# 
# Define a class called grocery_list

  Define initialize method that takes a hash (groceries) as input
    Create an instance variable equal to the groceries hash
  end

  Define add method that takes an item and quantity as parameters
    Push the item and quantity as key and value respectively in groceries hash
    
  end 
  
  Define update method that takes an item and quantity as parameters
    Update the quantity value for the key corresponding to item
  end

  Define remove method that takes an item as a parameter
    Remove the key value pair for that item
  end
  
  Define show method
    Iterate through hash and tell user what items and quantities are on the list
  end

# END
=end
 
# Your fabulous code goes here....

class GroceryList
  
  def initialize(groceries = {})
    @groceries = groceries
  end
  
  #Call this method to add an item to the list OR to change an item's quantity
  def update (item, quantity)
    @groceries[item]=quantity
  end
  
  def remove (item)
    @groceries.delete(item)
  end
  
  def show
    @groceries.each {|item,quantity| puts "There are #{quantity} #{item}(s) on your list."}
  end
end

# DRIVER CODE GOES HERE. 

grocery = GroceryList.new({"pears" => 5})
p grocery 

grocery.update("apple", 8)
p grocery

grocery.update("apple",7)
p grocery

grocery.remove("pears")
p grocery

grocery.show
p grocery
 