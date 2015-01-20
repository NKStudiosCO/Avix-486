#!/usr/bin/expect

set timeout 5
spawn git push origin master
expect "Enter passphrase for key"
send "hogehoge38\n"
expect "Last login"
send "ls -l\n"
interact
