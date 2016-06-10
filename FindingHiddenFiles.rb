#!/usr/bin/env ruby

#Creating Hidden File
File.open(".hidden.yaml", "w") do |f|
  f.puts "I am hidden"
end

if File.exist?(".hidden.yaml")
  puts "Found"
else
  puts "Not Found"
end