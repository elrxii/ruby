# Ethan Roberts
# CS 417 Topics in OOP
 
#  Pizza Program using Ruby





class Order

  def getHowMany
    total = 0
    print "\nEnter how many you need for this order (if none, enter 0):\n"
    total = gets.to_i
  end

end





class Cart < Order

  def initialize  
    @orderCounter = 0
	@cart = Array.new
  end
  
end




class PizzaOrder < Cart
  
    PIZZAMARGHERITA = "Pizza Margherita"
    HAWAIIANPIZZA = "Hawaiian Pizza"
    MEATLOVER = "Meat Lovers"
    FAMILY = "Family Size"
    INDIV = "Individual Size"
	
	SODA = "Soda"
	DIET = "Diet Soda"
	BEER = "Beer"
	
	CHEESE = "Cheese"
	HAM = "Ham"
	PEPP = "Pepparoni"
	GREENPEPPER = "Green-Pepper"
	ONIONS = "Onions"
	MUSHROOMS = "Mushrooms"
	PINEAPPLE = "Pinapple"
	
	SHIRT = "YLPP Shirt"
	MUG = "YLPP Mug"
	
	
	
def createOrder

    # This has contains the toppings of each pizza selected
	@pizzaHash = Hash.new
	@pizzaHash[1] = Array.new
	@pizzaHash[2] = Array.new
	@pizzaHash[3] = Array.new
	@pizzaHash[4] = Array.new
	@pizzaHash[5] = Array.new
	
    i = 0
	entry = 0
	pizzaChosen = 0
	
	print "\n\nLet's order pizza..."
    numOfPizzas = self.getHowMany  #get number of pizzas for order being added
    
	while (i < numOfPizzas)
      print"\nEnter number (1-5) pertaining to the kind of pizza you want: \n"
      print "  1.)  Pizza Margherita (tomato and cheese)\n"
      print "  2.)  Hawaiian Pizza (tomato, cheese, ham, pineapple)\n"
      print "  3.)  Meat Lovers (tomato, cheese, ham, pepparoni)\n"
      print "  4.)  Family Size\n"
      print "  5.)  Individual Size\n\n\n"
	  
      entry = gets.to_i
	  pizzaChosen = entry
	  if (entry > 0)
	   self.assignPizza(entry)
	  end
	  i = i + 1
	  self.getToppings(pizzaChosen)  #begin adding toppings
	  
	  @pizzaHash[pizzaChosen].each do |x|
        
        @cart.push(x)
       end
	   
	   
	   
	end
	
	self.getDrinks
end

  
  
 
def assignPizza(entry)
    if (entry == 1)
	  @cart.push(PIZZAMARGHERITA)
	elsif (entry == 2)
	  @cart.push(HAWAIIANPIZZA)
	elsif (entry == 3)
	  @cart.push(MEATLOVER)
	elsif (entry == 4)
	  @cart.push(FAMILY)
	elsif (entry == 5)
	  @cart.push(INDIV)
	end
end
  
  

def getToppings(pizzaChosen)
    i = 0
	entry = 0
	
	print "\n\nLet's order toppings..."
    numOfToppings = self.getHowMany  #get number of toppings being added
    
	while (i < numOfToppings)
      print"\n\nEnter number (1-6) pertaining to the topping you want: \n"
      print "  1.)  Cheese\n"
      print "  2.)  Ham\n"
      print "  3.)  Pepparoni\n"
      print "  4.)  Green-Pepper\n"
      print "  5.)  Onions\n"
      print "  6.)  Mushrooms\n\n\n"
	  
      entry = gets.to_i
	  
	  if (entry > 0)
	   self.assignToppings(pizzaChosen,entry)
	  end
	  i = i + 1
	end
end
  
  
  
def assignToppings(pizzaChosen,entry)
    if (entry == 1)
	  @pizzaHash[pizzaChosen].push(CHEESE)
	elsif (entry == 2)
	  @pizzaHash[pizzaChosen].push(HAM)
	elsif (entry == 3) 
      @pizzaHash[pizzaChosen].push(PEPP)  
	elsif (entry == 4)
	  @pizzaHash[pizzaChosen].push(GREENPEPPER)
	elsif (entry == 5)
	  @pizzaHash[pizzaChosen].push(ONIONS)
	elsif (entry == 6)
	  @pizzaHash[pizzaChosen].push(MUSHROOMS)
	end
end
  
  
  

def getDrinks
    i = 0
	entry = 0
	
	print "\n\nOrdering drinks..."
    numOfDrinks = self.getHowMany  #get number of drinks
    
	while (i < numOfDrinks)
      print"\n\nEnter number (1-3) pertaining to the kind of drink you are ordering: \n"
      print "  1.)  Soda\n"
      print "  2.)  Diet Soda\n"
      print "  3.)  Beer\n\n\n"
	  
      entry = gets.to_i
	 
	 if (entry > 0)
	   self.assignDrink(entry)
	  end
	  i = i + 1
	end
	
	self.getMerchandise
	
end                                   
  
  
  
  
  
def assignDrink(entry)
    if (entry == 1)
	  @cart.push(SODA)
	elsif (entry == 2)
	  @cart.push(DIET)
	elsif (entry == 3)
	  @cart.push(BEER)
	end
end
  
  
  
  
  
  
def getMerchandise
    i = 0
	entry = 0
	
	print "\n\nOrdering merchandise..."
    numOfMerch = self.getHowMany  
    
	while (i < numOfMerch)
      print"\n\nEnter number (1-2) pertaining to the kind of merchandise you are ordering: \n"
      print "  1.)  YLPP Shirt\n"
      print "  2.)  YLPP Mug\n\n\n"
	  
      entry = gets.to_i
	  if (entry > 0)
	   self.assignMerchandise(entry)
	  end
	  i = i + 1
	end
end     




def assignMerchandise(entry)
    if (entry == 1)
	  @cart.push(SHIRT)
	elsif (entry == 2)
	  @cart.push(MUG)
	end
end





def addToppingMenu
      print"\nEnter number (1-5) to select pizza you are adding topping to: \n"
      print "  1.)  Pizza Margherita (tomato and cheese)\n"
      print "  2.)  Hawaiian Pizza (tomato, cheese, ham, pineapple)\n"
      print "  3.)  Meat Lovers (tomato, cheese, ham, pepparoni)\n"
      print "  4.)  Family Size\n"
      print "  5.)  Individual Size\n\n\n"
	  
      entry = gets.to_i
	  pizzaChosen = entry
	  
	  
	  print"\nEnter number (1-6) to select topping you are adding: \n"
      print "  1.)  Cheese\n"
      print "  2.)  Ham\n"
      print "  3.)  Pepparoni\n"
      print "  4.)  Green-Pepper\n"
      print "  5.)  Onions\n"
      print "  6.)  Mushrooms\n\n\n"
	  
      entry = gets.to_i
	  toppingChosen = entry
	  
	  self.addTopping(pizzaChosen,toppingChosen)
end 





def addTopping(pizzaChosen,toppingChosen)
    if (toppingChosen == 1)
	  @cart.push(CHEESE)
	elsif (toppingChosen == 2)
	  @cart.push(HAM)
	elsif (toppingChosen == 3)
      @cart.push(PEPP)  
	elsif (toppingChosen == 4)
	  @cart.push(GREENPEPPER)
	elsif (toppingChosen == 5)
	  @cart.push(ONIONS)
	elsif (toppingChosen == 6)
	  @cart.push(MUSHROOMS)
	end
end  





def removeToppingMenu
      print"\nEnter number (1-5) to select pizza you are removing topping from: \n"
      print "  1.)  Pizza Margherita (tomato and cheese)\n"
      print "  2.)  Hawaiian Pizza (tomato, cheese, ham, pineapple)\n"
      print "  3.)  Meat Lovers (tomato, cheese, ham, pepparoni)\n"
      print "  4.)  Family Size\n"
      print "  5.)  Individual Size\n\n\n"
	  
      entry = gets.to_i
	  pizzaChosen = entry
	  
	  
	  print"\nEnter number (1-6) to select topping you are removing: \n"
      print "  1.)  Cheese\n"
      print "  2.)  Ham\n"
      print "  3.)  Pepparoni\n"
      print "  4.)  Green-Pepper\n"
      print "  5.)  Onions\n"
      print "  6.)  Mushrooms\n\n\n"
	  
      entry = gets.to_i
	  toppingChosen = entry
	  
	  self.removeTopping(pizzaChosen,toppingChosen)
end  





def removeTopping(pizzaChosen,toppingChosen)
    if (toppingChosen == 1)
	  @cart.delete(CHEESE)
	elsif (toppingChosen == 2)
	  @cart.delete(HAM)
	elsif (toppingChosen == 3)
      @cart.delete(PEPP)  
	elsif (toppingChosen == 4)
	  @cart.delete(GREENPEPPER)
	elsif (toppingChosen == 5)
	  @cart.delete(ONIONS)
	elsif (toppingChosen == 6)
	  @cart.delete(MUSHROOMS)
	end
end                                
  
  
  
  
def displayCart
  @cart.each do |x|
    print x
	print " -- "
  end
  print "\n"
 end
 
end




 
   myOrder = []              # this array will hold orders
   orderCounter = 0 
   decision = 0               #set to one to begin prompt

    while (decision < 5)      # while user has not finalized order
	  if (orderCounter > 0)   # if greater than 0, this will be the second order
	   print "\n\n\nPlease select a prompt: \n"
       print "  1.)  Place another Order\n"
       print "  2.)  Add Topping\n"
       print "  3.)  Remove Toppings\n"
	   print "  4.)  View Cart of Current Order\n"
       print "  5.)  Submit Order\n\n\n"
	   
	   decision = gets.chomp.to_i
	   
	   if (decision == 1)
	    orderCounter = orderCounter + 1
		print "\nCreating another order..."
	    myOrder[orderCounter] = PizzaOrder.new
		myOrder[orderCounter].createOrder        #begin order
       elsif (decision == 2)
	    myOrder[orderCounter].addToppingMenu     #refer to previous order
	   elsif (decision == 3)
	    myOrder[orderCounter].removeToppingMenu  #refer to previous order
	   elsif (decision == 4)
	    print "\nHere is what's in your cart:\n"
	    myOrder[orderCounter].displayCart  # view cart
	   end
	   
	  else  #order has not been created, create order
       print "\n\nCreating order..."
       orderCounter = orderCounter + 1
	   myOrder[orderCounter] = PizzaOrder.new  #create object
       myOrder[orderCounter].createOrder       #begin order
      end
    end
	
	
	print "\n\nORDER COMPLETE AND SUBMITTED\n\n"
  
    i = 1
	while(i <= orderCounter)
	  print "Order "
	  print i
	  print ": "
      myOrder[i].displayCart	
	  i = i + 1
	  print "\n"
	end
