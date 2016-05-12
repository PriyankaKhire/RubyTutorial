#!/usr/bin/env ruby

require 'socket'

hostname = 'localhost'
port = 2000

socket = TCPSocket.open(hostname, port)

while line = socket.gets #Read line from the socket
    puts line.chop       #print the line
end

#Close the socket when done
socket.close  

$end