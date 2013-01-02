require "capistrano/mono-deploy"

ssh_options[:keys] = %w('~/.ssh/*.pub')

set :application, "capistrano-nancy"
set :deploy_to, "~/www" 

set :mono_app, :fastcgi

role :app, "192.168.1.105"
set :user, "antony"
