# Ethan Roberts
# CS 417 Topics in OOP

# This script will loop through an array and return
# number of items that are less than item

# Ruby Assignment


def numSmaller(list,item)

  keyMatchCount = 0
  
  if list.length() == 0    #Making sure the array is not empty
    print "Array is empty, program terminated."
    return
 else
   list.each do |num|
     if num < item
       keyMatchCount = keyMatchCount + 1
     end
   end
 end
 
 return keyMatchCount
 
end


myAry = [0,1,2,3,4,5,6,7,8,9,10]
myItem = 8

print "Elements in array less than "
print myItem
print ": "
print numSmaller(myAry,myItem) 

