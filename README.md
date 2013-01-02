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
    root /home/YOUR_USER/www/current/;
    fastcgi_pass unix:/tmp/SOCK-capistrano-nancy;
    include /etc/nginx/fastcgi_params;
  }
}
```
I found that if you did not specify the root correcty then Nancy reports a 404 when hitting the application root.
I've only had issues with this when serving static files.

Edit config/deploy.rb to point to your server and use the correct user. 

Then run 

    $ cap deploy
    
And your site should be up!

References:
* [capistrano-mono-deploy](https://github.com/antonydenyer/capistrano-mono-deploy)
* [railsless-deploy](https://github.com/leehambley/railsless-deploy/)
* [capistrano](https://github.com/capistrano/capistrano/wiki)
