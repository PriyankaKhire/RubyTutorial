#!/usr/bin/env ruby

LowerCaseStringVariable = "some string in lower case"
puts LowerCaseStringVariable.capitalize
puts LowerCaseStringVariable.upcase
puts LowerCaseStringVariable.downcase
puts LowerCaseStringVariable.reverse
puts LowerCaseStringVariable.length

#String concat
puts LowerCaseStringVariable + " and now i am concatinating the string \n"

#String groupping
puts LowerCaseStringVariable[0..10]
puts LowerCaseStringVariable[15..24]
puts LowerCaseStringVariable[2]

#String Split
puts puts LowerCaseStringVariable.split
Date = "12/03/2016"
puts Date.split("/")
puts Date[0..5]
puts Date[0...5]
$end