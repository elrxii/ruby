# Ethan Roberts
# Ruby exercise

# This script finds all positive ints
# less than "n" that are not mcnugget numbers

# cite:  https://stackoverflow.com/questions/12112765/how-to-reference-global-variables-and-class-variables
# used this link for syntax help with defining a global variable

# cite:  http://mathworld.wolfram.com/McNuggetNumber.html
# used this link to get non-mcnugget values

# cite:  https://launchschool.com/books/ruby/read/loops_iterators
# used to reference using "until" loop


$mcnuggetAry = [1,2,3,5,7,11]  #global array holding all non-mcnugget nums

def findNonMcnuggetNums(value)
  
  print "\n--User entry: "
  puts value
  print "--Non-mcnugget integer(s): "
  i = 0
  if value > 11 
    $mcnuggetAry.each do |n|
	  print " "
	  print n
    end
   else
     while ($mcnuggetAry[i] < value)
       print $mcnuggetAry[i]
	   print " "
	   i = i + 1
	  end
   end
   print "\n\n"
end




# Loop for displaying output and 
# accuracy of program

  x = 0
  y = 1
  until x > 14
    findNonMcnuggetNums(y)
    x = x + 1
	y = y + 1
  end
