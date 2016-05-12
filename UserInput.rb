#!/usr/bin/env ruby

#Simple user input
print "Enter something "
UserInput = gets.chomp
puts "The user entered #{UserInput}"

#Manuplate the user input
print "Enter something "
NewUserInput = gets.chomp.capitalize
puts "The user entered #{NewUserInput}"

print "Enter something "
AnotherNewUserInput = gets.chomp
puts "The user entered #{AnotherNewUserInput.upcase}"

#Numbers
puts "Tell me a number"
x = STDIN.gets.chomp().to_i
puts "#{x} + 5 = #{x+5}"

$end