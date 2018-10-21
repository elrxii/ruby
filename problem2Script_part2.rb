# Ethan Roberts
# CS 417 Topics in OOP

# This script deals with light switches and lights


# Ruby Assignment

#  cite: https://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/user_input.html
#  Used this link to teach myself how to get user-input from terminal

#  cite: https://apidock.com/ruby/String/to_i
#  Used to learn how to convert terminal input to int


class Switch

def initialize  # self-note:  initialize is a ruby-defined "constructor"
     @maxToggle = 3  #@ sign means instance variable
	 @numOfSwitches = 0
	 @remainder = 0
end
  
  
  
def findNumberOfLights(entry)
   if entry < 2
     return 0	
   elsif entry == 2
     return 1
   else
     @remainder = entry % @maxToggle  #checking to see if there is a remainder
	 if @remainder > 0
	   return ((entry / @maxToggle) + 1)
	 else
      return (entry / @maxToggle)
	 end
   end
end


end





mySwitch = Switch.new()
myAnswer = 0
entry = 0 
i = 0

# get user input 12 times to show accuracy of program
while (i < 12) 
  print "\nEnter number of lights you need to turn on: "
  entry = gets.to_i
  myAnswer = mySwitch.findNumberOfLights(entry)
  if (myAnswer == 0)
    puts "Entry must be two or more lights...try again."
  else
    print "Total light-switches needing flipped: "
    puts myAnswer
  end
  i = i + 1
end