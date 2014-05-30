# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
  
  def area
    @width*@height
  end
  
  def perimeter
      (2*@width) + (2*@height) 
  end
  
  def diagonal
       (Math.sqrt((@width**2) + (@height**2))).to_f
  end
  
  def square?
      @height == @width
  end
  
end





# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


rectangle1 = Rectangle.new(10,12)
rectangle2 = Rectangle.new(12,12)
rectangle3 = Rectangle.new(3,4)

p rectangle1.area == 120
p rectangle2.square? == true
p rectangle3.diagonal == 5
p rectangle1.perimeter == 44



# 5. Reflection 