server '18.178.43.77', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '~/.ssh/id_rsa'