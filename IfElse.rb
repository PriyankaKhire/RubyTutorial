#!/usr/bin/env ruby

Some_Variable = 1000000

#If else
if Some_Variable < 15
    puts "Variable is less than 15"
else
    puts "Variable is more than 15"
end

#Else if
if Some_Variable <= 15
    puts "Variable is less than equal to 15"
elsif Some_Variable > 100
    puts "Variable is more than 100"
else
    puts "What is the variable ?"
end
