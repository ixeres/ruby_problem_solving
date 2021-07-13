# In a file called rearrange.rb, write a Ruby program that given an integer number,
# rearranges its digits to create the largest number possible with those digits.
# If a non-integer number is entered, it should reprompt the person again for a
# number until a number is entered.

input = nil

# Reuse While/Rescue from previous question

while input == nil
  begin
    puts "Enter a number: "
      input = Integer(gets.chomp)
      input = input.to_s
  rescue ArgumentError
    puts "That's not a number, jabroni!"
      retry
  end

# Inelegant, but special case for negative integers

if input.include? '-'
  output = input.chars.sort.join
  #Isolate characters, sort them by value (lowest to highest), then join them
  #-19576, -15979
else
  output = input.chars.sort.reverse.join
  # Isolate characters, sort them (default lowest to highest), then reverse them, then join them
  # 19576, 15679, 97651.
end

#Put the thing down, flip it and reverse it. - Missy Elliot, on Ruby sorting. 

puts "#{output}"

end
