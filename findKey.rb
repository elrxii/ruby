# Ethan Roberts
# This script will loop through an array and
# count how many times a "key" is found inside array 



def occurences(list,key)

 keyMatchCount = 0
 list.each do |num|
   if num == key
     keyMatchCount = keyMatchCount + 1
   end
 end
 
 return keyMatchCount
end


myAry = [10,20,30,0,50,20,20,70,80,80,72,90,100,90,20,100,100,100,50,50]
myKey = 94  #random value to search for

print "Occurences of key "
print myKey
print ": "
print occurences(myAry,myKey)   #print how many occurences of key
