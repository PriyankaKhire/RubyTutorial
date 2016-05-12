#!/usr/bin/env ruby

HashTable = {
             "key1" => "Value1",
             "key2" => "Value2",
			 "key3" => "Value3",
			 "key4" => "Value4",
			 "key5" => "Value5"
			 }
			 
puts HashTable["key2"]

#Print the contents of hash table
HashTable.each{ |k, v| puts "Key: #{k} Value: #{v}"}

#Declaring Hash Table and adding values in it
HashTable_New = Hash.new
HashTable_New["NewKey"] = "NewValue"
HashTable_New["AnotherKey"] = "AnotherValue"
puts HashTable_New["AnotherKey"]
			 
$end