#!/usr/bin/env ruby

require "yaml"

class A
  attr_accessor :string, :number 
  
  def initialize(string, number)
    @string = string
	@number = number
  end
  
  # We are making a Ruby hash and turning it into a YAML
  #def to_yaml
   # return {:string=>@string, :number=>@number}.to_yaml
  #end
  
  # convert a YAML string into a Ruby Object
  def self.from_yaml(yaml_string)
    data = YAML.load(yaml_string)
	p data
	#p data[:string]
	#p data[:number]
	return data
  end
  
end

obj = A.new("Hi", 5)
puts obj.to_yaml
puts
data = A.from_yaml(obj.to_yaml)
puts "String #{data.string}"
puts "Number #{data.number}"