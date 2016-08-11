#!/usr/bin/env ruby
require 'date'
require 'time'

#Make sure while you run this file, you are in a git directory

#Running git log for a specific date
dat = `git log --pretty=format:'___%h___%s___%cI___%an___' --since='#{Time.new(2016,05,17).strftime("%Y-%m-%d")}'`
puts dat
puts "#{Time.new(2016,05,17).strftime("%Y-%m-%d %H:%M:%S")}"
d = (DateTime.now - 1).to_time
puts "today"
puts DateTime.now
puts d

#Get all commit ids
git_logs = `git log --pretty=format:'___%h___%s___%cI___%an___' --all`

#For each log entry
git_logs.each_line do |line|
  start_quote,tag, commit_message, time_stamp, author = line.chomp.split("___").map {|x| x.strip}
  puts tag
  puts commit_message
  puts time_stamp
  puts author
  
  #See which branch does the specific commit id belongs to
  git_branch = `git branch --contains #{tag} -a`
  puts "The branch is "
  puts git_branch
  git_branch.each_line do |branch_line|
    if branch_line =~ /\s+(\S+)/
	  puts $1
	  puts "%%%%%%%%%%"
	end
  end
  puts "*********************"
end

#Checking if a git commit id exists or not
puts "Enter a commit id"
hashtag = gets.chomp
msg = `git fetch && git branch -r --contains #{hashtag}`
if $?.success?
  puts "Found the tag"
  puts "The full commit id is"
  full_tag = `git log --pretty=format:'%H' | grep #{hashtag}`
  puts full_tag
else
  puts "Not found"
end

#Running another git command
=begin
data = `git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) %C(bold white)__test_result:%h__%C(reset) %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all`
new_lines = data.split("\n").map { |line|
  if line =~ /__test_result:(\w+)__/
    tag = $1
	puts tag
  end
}
=end