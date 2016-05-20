#!/usr/bin/env ruby

require 'fileutils'

def delete_file
  File.delete(InputFile)
end

def write_file(input_text)
  File.open(InputFile, "a") do |file|
    file.puts(input_text)
  end
end

def create_dir
  unless File.directory?(InputFolder)
    FileUtils.mkdir_p(InputFolder)
  end
end

def delete_dir
  unless not File.directory?(InputFolder)
    FileUtils.rmdir(InputFolder)
  end
end

InputFolder = "temp"
create_dir
InputFile = "Test.txt"
InputFile = InputFolder+"/"+InputFile
write_file("This is my first line")
delete_file
delete_dir