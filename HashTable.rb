#!/usr/bin/env ruby

HashTable = {
             "key1" => "Value1",
             "key2" => "Value2",
			 "key3" => "Value3",
			 "key4" => "Value4",
			 "key5" => "Value5"
			 }
			 
puts HashTable["key5"]
if HashTable["key6"].nil?
  puts "Key 6 does not exist"
else
  puts "Key 6 exists"
end

#Print the contents of hash table
HashTable.each{ |k, v| puts "Key: #{k} Value: #{v}"}

#Declaring Hash Table and adding values in it
HashTable_New = Hash.new
HashTable_New["NewKey"] = "NewValue"
HashTable_New["AnotherKey"] = "AnotherValue"
puts HashTable_New["AnotherKey"]
		
choice = 'y'	
ArrayHash = Hash.new	
while choice == 'y' do			 
	puts "Enter a hash key"
	user_key = gets.chomp
	puts "Enter value"
	user_value = gets.chomp
	#If key not present in hash table then add it
	if ArrayHash.key?(user_key) == false
	  ArrayHash[user_key] = [user_value]
	else
	  ArrayHash[user_key].push(user_value)
	end
	puts "Add another ?"
	choice = gets.chomp
end		
ArrayHash.each{ |k, v| puts "Key: #{k} Value: #{v}"}

if ArrayHash.empty?
  puts "Hash table of arrays is empty"
else
  puts "Hash table is not empty"
end
	 
$end