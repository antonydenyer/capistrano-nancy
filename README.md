capistrano-nancy
================

An example of a simple nancy application deployed with [capistrano-mono-deploy](https://github.com/antonydenyer/capistrano-mono-deploy) hosting on nginx using fastcgi

Clone the repo and build the solution

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-mono-deploy
    
In your nginx config do something like this

```
server{
  listen 80;
  server_name localhost;
  
  location / {
    fastcgi_pass unix:/tmp/SOCK-capistrano-nancy;
    include /etc/nginx/fastcgi_params;
  }
}
```

Edit config/deploy.rb to point to your server and use the correct user. 

Then run 

    $ cap deploy
    
And your site should be up!

References:
* [capistrano-mono-deploy](https://github.com/antonydenyer/capistrano-mono-deploy)
* [railsless-deploy](https://github.com/leehambley/railsless-deploy/)
* [capistrano](https://github.com/capistrano/capistrano/wiki)
* [FastCGI Nginx](http://www.mono-project.com/FastCGI_Nginx)
