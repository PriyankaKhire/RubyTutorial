#!/usr/bin/env ruby

class BaseClass

    #Class Variables
	@@ClassVariable1 = "Some String"
	@@ClassVariable2 = 123

    #Constructor method
    def initialize(v1, v2)
	puts "A constructor with 2 args got invoked"
	#Assign the instance variables
	@Variable1 = v1
	@Variable2 = v2
	end
	
	#The actual syntax of the language does not allow you to define a method twice, even if the arguments are different.
	#def initialize(v1, v2, v3)
	#puts " A constructor with 3 args got initialise"
	#Assign the instance variables
	#@Var1 = v1
	#@Var2 = v2
	#@Var3 = v3
	#end
	
	#Accessor Methodes
	
	#Get methodes
	def GetV1()
	@Variable1
	end
	
	def GetV2()
	@Variable2
	end
	
	#Set Methodes
	#Note that argument to functions SHOULD start with lower case letters
	def Variable1=(val1)
	@Variable1 = val1
	end
	
	def Variable2=(val2)
	@Variable2 = val2
	end
	
	#Instance methods
	def func1()
	# The product of value 1 and value 2 is
	@Variable1 * @Variable2
	end
	
	#Class method
	def self.ClassMethod()
	puts "This is class method"
	end
	
	#String representation of the object
	def to_s()
	"String representation of the object is #{@Variable1} and #{@Variable2}"
	end
	
	#Access Control
	public :func1
end

class GetObj

  def initialize
    puts "Get Object got initialize"
  end

  def get_obj(obj)
    puts "The object recieved is "
    p obj
	puts "************"
  end
end

class SendObj
attr_accessor :name, :number, :time

  def initialize(n, nn, t)
    @name = n
	@number = nn
	@time = t
  end

  def send_obj()
    getObj = GetObj.new()
	getObj.get_obj(self)
  end
end

#Main prog

sendObj = SendObj.new("Send Object", 100, Time.now)
sendObj.send_obj

#Declare the object
obj = BaseClass.new(5, 10)
puts obj
BaseClass.ClassMethod()
a = obj.func1()
puts "The instance method returns #{a}"
obj.Variable1 = 20
obj.Variable2 = 30
v1 = obj.GetV1()
v2 = obj.GetV2()
puts "New V1 = #{v1}"
puts "New V2 = #{v2}"