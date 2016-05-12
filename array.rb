#!/usr/bin/env ruby

String_Array = ["abc", "def", "ghi", "jkl", "mno"]
Mixed_Array = ["String", 'c', 2, 6-9]

#Start from beginning
puts String_Array[2]
puts Mixed_Array[1]
#Start from end
puts String_Array[-2]
puts Mixed_Array[-1]

#Putting variable in string statement
puts "This is a string **** #{String_Array[1]} **** and i am substuting a variable there"

#Declaring an array
arr = Array.new