#!/usr/bin/env ruby

system 'echo hi'
system ('git version')

cmd = "echo hello"
`echo # Qman Command:  > log.txt`
`echo #{cmd} >>  log.txt`
system cmd+ " >> log.txt 2>&1"