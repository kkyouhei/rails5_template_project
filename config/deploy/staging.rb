# TODO modify your server ip
server "192.168.10.1", user: 'ec2-user', roles: %w{app web db}
set :branch, "master"
set :rails_env, "staging"
# TODO modify your server key
set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  forward_agent: true,
  auth_methods: %w(publickey)
}
