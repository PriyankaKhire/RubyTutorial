#!/usr/bin/env ruby

require "yaml"
require "C:/Users/pkhire/Documents/Tutorials/Ruby Tutorial/RubyTutorial/SerilizationYAML"

array = []
hash = {}

puts "Loading the array of objects back from the file to array"
array = YAML.load File.read('Serilization.yml')
puts "Within the DeSerilizationYAML.rb file accessing the contents of array"
puts "The object number 3 has number = #{array[3].number}"
puts "The object number 4 has string = #{array[4].string}"

puts "Loading the yaml file into a hash table"
hash = YAML.load(File.read('HashTable.yml'))

puts "Within the DeSerilizationYAML.rb file accessing the contents of HASH TABLE"
puts hash
puts hash["Commands"]
puts hash["Commands"]["title"]