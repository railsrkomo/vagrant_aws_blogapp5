server '18.177.81.240', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '~/.ssh/id_rsa'