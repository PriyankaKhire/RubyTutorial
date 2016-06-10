#!/usr/bin/env ruby

#Make sure while you run this file, you are in a git directory

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

