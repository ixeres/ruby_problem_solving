# Problem 1 - Max number
# In a file called max_number.rb, write a Ruby program to find the maximum of two numbers.
# If something other than a number is entered, it should prompt the person again for the number
# until a number is entered.

num1 = nil
num2 = nil

# Check number 1 using while loop and rescue for Integer ArgumentError
while num1 == nil
  begin
    puts "Enter a number: "
      num1 = Integer(gets.chomp)
  rescue ArgumentError
    puts "That's not a number, jabroni!"
      retry
  end
end

# Check number 2 using while loop and rescue for Integer ArgumentError
while num2 == nil
  begin
    puts "Enter another number: "
      num2 = Integer(gets.chomp)
  rescue ArgumentError
    puts "That's not a number, jabroni!"
      retry
  end
end

#Compare values
if num1 > num2
  puts "Max: #{num1}"
elsif num2 > num1
  puts "Max: #{num2}"
else
  puts "Great. You broke it somehow."
end
