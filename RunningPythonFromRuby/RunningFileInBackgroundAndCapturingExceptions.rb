#!/usr/bin/env ruby


File.open("Sleeping.py", "w") do |file|
  file.puts("#!/usr/bin/python")
  file.puts("import time")
  file.puts("print 'Hi'")
  file.puts("time.sleep(10)")
  file.puts("print 'bye'")
end

pid = Process.fork
if pid.nil?
  system('python Sleeping.py 2>&1 &')
else
  Process.detach(pid)
end
