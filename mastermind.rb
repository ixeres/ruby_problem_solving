#Problem 5 - Mastermind
#In a file called mastermind.rb, create a code-cracking game that randomly
#generates a 4 digit code, where each digit has the value of 1-6. A person will
#attempt to crack the code by making guesses, and the program will give the
#person hints about whether the digits are correct or not.

#For each digit that is in the right place, it will be output an X. For each
#digit that is in the code, but is in the wrong place, it will output an x.
#All X’s will be output before x’s.

#The game will keep track of the number of guesses the person has made, and will
#end when the code is guessed.
code = ""

until code.length == 4
  num = rand(6)+1
  code += num.to_s
end

#Once we have the code, we need to make it an array of integers
code = code.split("").map(&:to_i)

#Once we have the code array, we need to start guessing + count guess numbers

puts "[#{guess_num}] Enter your guess: "

#Once we have a guess, we need to evaluate it against the code array

#Once we evaluate the guess, we need to output any X's

#Once we output the X's, we need to output any x's

#LOOOOP
puts "#{code}"
