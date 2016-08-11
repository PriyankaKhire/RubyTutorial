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
File.open("Serilization.yml", "w") do |file|
  file.puts YAML::dump(array)
end

puts "Within the SerilizationYAML.rb file accessing the contents of array"
puts "The object number 3 has number = #{array[3].number}"
puts "The object number 4 has string = #{array[4].string}"

#Creating array object
a_obj = A.new("Object", 1)
puts "Serilizing the string contents of a object into yaml file"
File.open("Serilization_aobj.yml", "w") do |file|
  file.puts YAML::dump(a_obj.string)
end



#Creating a hash table of random values
puts "Creating a hash table..."
HashTable = {
             "title" => "My Rails Website",
             "author" => "Santa Claus",
			 "email" => "email@company.com",
			 "css_file" => "default.css",
			 "adapter" => "mysql"
			 }
puts "Creating commands hash table"
Commands = {"Commands" => HashTable}
#Print the contents of hash table
puts "The contents of the hash table are"
HashTable.each{ |k, v| puts "Key: #{k} Value: #{v}"}
			 
#Putting this Hash Table into a YAML file
puts "Saving the hash table to a file."
File.open("HashTable.yml", "w") do |file|
  file.puts YAML::dump(Commands)
end

