#!/usr/bin/env ruby

#You can define blocks in ruby by 2 methodes
#do and end :- Multi line blocks
#Curly braces :- single line blocks

#The only way to use a block is to pass them as an argument to a method.
#A methode can also pass an argument into the block when it executes it.

#Block arguments are specified between || at the start of the block

#This is similar to for each statement in python
[1,2,3].each do |n|
    puts "Number #{n}"
end

#Block and method with same name
# You can just pass a block to any function but unless that function calls yield, the block won't get executed.
def MyBlockMethod()
    puts "At the top of the method"
	yield
	puts "At the bottom of the method"
end

MyBlockMethod do
    puts "Reached the block yield"
end