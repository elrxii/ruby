# Ethan Roberts
# CS 417 Topics in OOP

# This script deals with a single-elimination tournament


# Ruby Assignment



class Tournament


def initialize  # self-note:  initialize is a ruby-defined "constructor"
	 @playersPerMatch = 2
	 @playersInTourney = 0
end


def getRounds(entry)
  
    counter = 0
	dividend = 0
	remainder = 0
	@playersInTourney = entry
	
	dividend = entry / @playersPerMatch # first round
	remainder = entry % 2
	dividend = dividend + remainder
	counter = counter + 1
	
	while (dividend > 1)
	   remainder = dividend % 2
	   dividend = dividend / @playersPerMatch
	   dividend = dividend + remainder
	   counter = counter + 1
       
  	end
	 
     return counter  # number of matches played in tournament

end



def getMatches
  return @playersInTourney - 1  # matches played formula:  number of players - 1
end

 

end





myGame = Tournament.new()
myAnswer = 0
entry = 0 
i = 0


#while-loop to show program accuracy...runs progam 10 times
while (i < 10)
 
  print "\nEnter number of players playing: "
  entry = gets.to_i
  
  myAnswer = myGame.getRounds(entry)
  print myAnswer
  print " round(s) in this tournament.\n"
  
  myAnswer = myGame.getMatches
  print myAnswer
  print " match(es) in this tournament.\n"
  
  
  myAnswer = myAnswer - 1 #formula to get second-best:  matches played - 1
  print myAnswer
  print " match(es) need to be played to get second-best player.\n"
  
  i = i + 1
 end
