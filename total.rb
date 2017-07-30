#This is basically a function file, defining the method used to add the three favorite numbers, to then be called from app.rb
def total (num1,num2,num3)
	total = num1.to_i + num2.to_i + num3.to_i
	#converts the numbers to integers in order to be used in a math function.
	total.to_s
	#Converts the number back to a string, in order for the information to be passed. Not sure why this is necessary but it wont work otherwise.
end