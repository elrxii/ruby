# Ethan Roberts
# CS 417 Topics in OOP

# This script will contain two different
# methods for iterating over an array

# Ruby Assignment


class Array

#NOTE: Used source: "https://stackoverflow.com/questions/16422872/reimplementing-enumerable-map-method-in-ruby"
# for help understanding how passing a block works and for syntax help

	def iterativeMap   
	  out = []
	  if block_given?
	    self.each { |n| out << yield(n)}
		return out
	  end
	end
	
	
	def recursiveMap
	  if self.empty?
	    return
	  else
        number = self.pop
		number = number * 2
		recursiveMap
	  end
	  
       return self << number  #returning array with calculated values
	   
	end
end


answerAry = [] # for holding final answer 

#Section for testing "iterativeMap" method
myAry = [5,10,15,20,25,30,35,40,45]
answerAry = myAry.iterativeMap{|n| n * 2}
print "\nUsing iterative method: "
print answerAry
print "\n\n"


#Section for testing "recursiveMap" method
answerAry = myAry.recursiveMap {|n| n * 2}
print "Using recursvive method: "
print answerAry
print "\n\n"

