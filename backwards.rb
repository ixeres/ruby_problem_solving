# Problem 3 - Backwards names
# In a file called backwards.rb, write a Ruby program which accept the user's first
# and last name and print them in reverse order with a space between them.

puts "Input your first and last name: "

input = gets.chomp

output = input.split(' ').reverse.join(' ')
#takes the string, splits it on the space, reverses array elements (so lastname, firstname)
# and breaks it out of the array with a join that includes a space to separate them.

puts "Hello #{output}."
