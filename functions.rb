#!/usr/bin/env ruby

def FunctionToPrintSomething(name)
    puts "This function is trying to print #{name}"
end

def FunctionToReturn2Values(a,b)
    return a+b, a*b
end

#Main program
FunctionToPrintSomething("My name")

Addition, Product = FunctionToReturn2Values(2,3)
puts "Addition = #{Addition} and Product = #{Product}"

$end