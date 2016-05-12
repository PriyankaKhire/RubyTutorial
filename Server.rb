#!/usr/bin/env ruby

require 'socket'

hostname = 'localhost'
port = 2000

#Make server socket to listen on port
server = TCPServer.open(port)

loop {
	Thread.start(server.accept) do |client|
		client.puts(Time.now.ctime) #Sent the current time to the client
		client.puts "Tanay does not know the arjun story haha :D"
		client.puts "Alright I am closing the connection now. Bye, Take care !"
		client.close
	end
}