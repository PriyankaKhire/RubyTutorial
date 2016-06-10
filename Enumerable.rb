#!/usr/bin/env ruby

class A

  attr_accessor :time, :string, :number
  def  initialize(t, s, n)
    @time = t
	@string = s
	@number = n
  end
  
  #This methode just helps us to define, based on what we are sorting the object.
  def <=>(other)
    #@time <=> other.time
	#@number <=> other.number
	@string <=> other.string
  end

end

o1 = A.new(Time.now, "kkkk", 49)
o2 = A.new(Time.new(2002), "vvv", 23)

puts o1
puts o2
puts "*****"
puts [o1, o2].sort!