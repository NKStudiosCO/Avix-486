echo "$github_user\n"
expect -c '
set github_user $env(github_user)
set github_pass $env(github_pass)

set timeout 5
spawn git push origin master
expect "Username"
send "$github_user\n"
expect "Password"
send "$github_pass\n"
interact
'
