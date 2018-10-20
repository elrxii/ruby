# Ethan Roberts
# CS 417 Topics in OOP
# This script will find the second smallest index position.

# Ruby Assignment



# method for looping through array
# and seeing if smallest value has duplicate.
# If so, the second duplicate is second smallest

def scanSmallestDuplicate(smallestValue,list)
  x = 0
  dupCounter = 0
  indexLocator = 0
  while x < list.length && dupCounter < 2
    if list[x] == smallestValue
      indexLocator = x
      dupCounter = dupCounter + 1
    end
  x = x + 1
  end
  
  
  if dupCounter > 1
    return indexLocator
  else
    return 0
  end
end




def secondSmallest(list)
  smallest = list[0]
  secondSmallest = list[1]
  temp = 0
  secondSmallestIndex = 0
  
  # Compare 0th element and 1st element
  # in array
  if secondSmallest < smallest
    temp = smallest
    smallest = secondSmallest
    secondSmallest = temp  
    secondSmallestIndex = 1  #referencing index 1 of array
  end
  
  
  i = 2 # index 0 and 1 already compared
  while i < list.length
    if list[i] < secondSmallest
      if list[i] < smallest
        temp = smallest 
        smallest = list[i]
        secondSmallest = temp    
      else
        secondSmallest = list[i]
      end
    end
    i = i +1
  end
  

  smallDupIndexLocator = scanSmallestDuplicate(smallest,list) 
  if smallDupIndexLocator > 0 
    return smallDupIndexLocator
  else
    return list.index(secondSmallest)
  end
end
  
  
myAry = [9,8,6,22,4,6,77,4]

print "The position of the second smallest element in the array is: "
print secondSmallest(myAry)



