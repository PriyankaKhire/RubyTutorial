#!/usr/bin/env ruby

require "yaml"

class A
  attr_accessor :string, :number 
  
  def initialize(string, number)
    @string = string
	@number = number
  end
end


#Declare an array
array = []

#Create random 5 objects of the class A and put them in array
for i in 0..5
  array.push(A.new("hello #{i}", i))
end
#Thus array now contains 5 objects of class A

#Store the whole array of objects into a yaml file
#This is better than storing indivudial objects
puts "Saving the array of objects to a file"
File.open("Serilization.yml", "a") do |file|
  file.puts YAML::dump(array)
end

puts "Within the SerilizationYAML.rb file accessing the contents of array"
puts "The object number 3 has number = #{array[3].number}"
puts "The object number 4 has string = #{array[4].string}"

