# Ethan Roberts
# CS 417 Topics in OOP

# This script will manipulates a list
# Ruby Assignment

# To understand instance variables for classes, 
# I used:  http://ruby-for-beginners.rubymonstas.org/writing_classes/instance_variables.html

class List


def initialize  # self-note:  initialize is a ruby-defined "constructor"
     @backingStore = []  #@ sign means instance variable
end


	
	
def insert(value) 
	 @backingStore.push(value)
end
	
	
	
	# cite:  https://ruby-doc.org/core-2.2.0/Array.html#method-i-index
	# implemented ".index" method from this site
def delete(value)
      if @backingStore.length() == 0  # backingStore is empty
	    return
	  else
	    @backingStore.each do |n|
	      if n == value
		    @backingStore[@backingStore.index(n)] = nil
		   end
		end
	 end
end



	  
def traverse
     @backingStore.each do |n|
        print n
		print " "
     end
end
   
 
end
	

#-------- BEGIN TESTING CODE  ---------
	
myList = List.new
stringList = List.new

myList.insert(1)
myList.insert(2)
myList.insert(3)
myList.insert(4)
myList.insert(5)
myList.insert(6)
myList.insert(7)
myList.insert(8)
print "Printing full list before deletes: "
myList.traverse
print "\n"
myList.delete(4)
print "After deletion: "
myList.traverse
print "\n"
myList.delete(3)
myList.delete(7)
print "After deletion: "
myList.traverse
print "\n"
myList.delete(1)
print "After deletion: "
myList.traverse
print "\n"
myList.insert(988)
print "After insert: "
myList.traverse
print "\n\n**Begin testing different data type...\n\n"

#---------- TESTING DIFFERENT OBJECT DATA-TYPE -------------

stringList.insert("cat")
stringList.insert("dog")
stringList.insert("shark")
stringList.insert("parrot")
stringList.insert("lizard")
stringList.insert("tiger")
stringList.insert("pelican")
print "Printing full list before deletes: "
stringList.traverse
print "\n"
stringList.delete("pelican")
print "After deletion: "
stringList.traverse
print "\n"
stringList.delete("shark")
print "After deletion: "
stringList.traverse
print "\n"