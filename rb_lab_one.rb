# Challenge 1 - Temperature Converter

# Create a simple temperature convertor. It should function like the example below:

# Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius
# 1
# Enter Celsius Temperature:
# 24
# 24 degrees Celsius is equal to 75.2 degrees Fahrenheit

# puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"
# type = gets.chomp.to_i

if type == 1
	puts "Enter Celsius Temperature"
	temp = gets.chomp.to_i
	temp_f = (temp * 2) + 30
	puts "The temperature Celsius is #{temp_f}"
else
	puts "Enter Fahrenheit Temperature"
	temp = gets.chomp.to_i
	temp_c ((temp - 32) * 5) / 9
	puts "The temperature Celsius is #{temp_c}"
end



# Challenge 2 - Calculator

# Create a simple calculator that first asks the user what method they would like to use (addition, subtraction, multiplication, division) and then asks the user for two numbers, returning the result of the method with the two numbers. Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

puts "What calculation would you like to do? (add, sub, mult, div)"
op = gets.chomp

puts "What is number 1?"
num1 = gets.chomp.to_i

puts "What is number 2?"
num2 = gets.chomp.to_i

if op == "add"
	puts num1 + num2
elsif op == "sub"
	puts num1 - num2
elsif op == "mult"
	puts num1 * num2
elsif op == "div"
	puts num1.to_f / num2.to_f
else
	puts "Please enter correct operator"
end






# Challenge 3 - Reverse a string

# Reverse a string in place. In other words, do not create a new string or use other methods on the
 # string such as reverse. The goal of the problem is to use a loop and the string accessors to figure
 # out which values to swap for other values. Below is the output.

# Enter a string:
# reverse_me
# em_esrever

puts "plese enter your name"
name = gets.chomp
arr = []

name.each_char do |letter|
	arr.push(letter)
end

x = arr.length - 1
y = 0







# Challenge 4 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit.
 # Write three methods to perform these calculations and output the result to the user. Here is a sample output:

# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# # Thank you!

def ATM (op)
	if op == ""
		puts "What would you like to do? (deposit, withdraw, check_balance)"
		op = gets.chomp
	end
	bal = 0

	if op == "deposit"
		puts "How much would you like to deposit?"
		numdep = gets.chomp.to_i
		bal = numdep
		puts "New Balance: #{bal}"
		puts "are you done yet?"
		answer = gets.chomp
			if answer == "yes"
				puts "thank you"
			else
				puts "what now?"
				ans = gets.chomp
				ATM(ans)
			end
	elsif op == "withdraw"
		puts "How much would you like to withdraw?"
		numwit = gets.chomp.to_i
		new_bal = bal - numwit
		puts "New Balance: #{new_bal}"
		puts "are you done yet?"
		answer = gets.chomp
			if answer == "yes"
				puts "thank you"
			else
				puts "what now?"
				ans = gets.chomp
				ATM(ans)
			end
	elsif op == "check_balance"
		puts bal
	else
		puts "Please enter correct operation"
	end
end

ATM("")



# Challenge 5 - Guessing Game

# Create a program that asks the user to guess a number between 1 and 100.
# Once the user guesses a number, the program should say, higher, lower, or tell the user that he got the number correct.
# The user should continue to make guesses until he guesses correctly. Also, once the user guesses correctly,
 # the program should print the number of guesses needed to arrive at the correct answer. Below is sample output:

# Guess a number between 1 and 100
# 50
# The number is lower than 50.  Guess again
# 25
# The number is lower than 25.  Guess again
# 13
# The number is higher than 13.  Guess again
# 20
# The number is lower than 20.  Guess again
# 17
# The number is higher than 17.  Guess again
# 18
# The number is higher than 18.  Guess again
# 19
# You got it in 7 tries

def game(x)
puts "Guess a number between 1 and 100"
guess = gets.chomp.to_i
number = 17
moves = x
	if guess > number
		puts "#{guess} is higher than the number"
		x = moves + 1
		game(x)
	elsif guess < number
		puts "#{guess} is lower than the number"
		x = moves + 1
		game(x)
	else
		puts "You Win in #{moves} Moves!"
	end
end

game(1)




# Bonus Challenge - Class List

# Create an array of students and allow the user to keep adding new students to the array.
 # After each student is added, display the array to the user (use the inspect method to display the array).
  # If the user deciders to not add an additional student, display the list of the students and the index
  # that each student is at (check out .each_with_index) Here is a sample prompt:

# Would you like to add another student?
# yes
# What is the student's name?
# Taco
# The array of instructors now looks like: ["Taco"]
# Would you like to add another student?
# no
# Here is a summary of your student array:
# The student at index 0 is Taco



