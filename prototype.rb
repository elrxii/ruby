#  Ethan Roberts
#  CS 417 Topics in OOP

#  Design Patterns

#  This is a prototype

class MainAbstract  #main abstract implementation 
  # Main abstract interface that "Servant" class will implement for some shape
  # regardless of if it has edges or no edges
 
end



class Servant < MainAbstract  # servant class
  #This class inherits the MainAbstract interface and it will
  #be used by all shapes
 
end


 
class Circle < Servant
   #using Servant class
 
end



class Polygon < Servant
 #using servant class and this class is being extended
 
end



class OutputType  # this class will be implemented for classes that are using outputs

end




class XMLFormatter < OutputType
 
 
end



class OutputPolygon < OutputType
  
end
  
  
  
class OutputCircle < OutputType
  
end
  
  
 