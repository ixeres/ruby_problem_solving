#Problem 4 - Leap year
#In a file called leapyear.rb, write a Ruby program which accept the a year from
#the user and determines if that year is a leap year or not. If they user enters
#anything other then a valid year, the application should re-prompt the user for
#to enter a valid year.

input = nil

while input == nil
  begin
    puts "Enter a year: "
      input = Integer(gets.chomp)
      #inelegant, but it works and I'm so far behind. >.>
      input = input.to_s
      #year = 4 digits. Check the digits!
      if input.length == 4
        #digits = good, do the math!
        if input % 400 == 0
          puts "#{input} is a leap year."
        else
          puts "#{input} is NOT a leap year."
        end
      else
        #digits = bad, no math, start again.
        puts "That's not a year, jabroni!"
        input = nil
      end
  rescue ArgumentError
    puts "That's not a number, jabroni!"
      retry
  end
end
