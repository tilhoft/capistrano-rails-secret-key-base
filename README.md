# Capistrano::SecretKeyBase

With this gem you can generate a new secret key base for rails, directly written to config/secrets.yml by capistrano.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-rails-secret-key-base', :git => "git://github.com/tilhoft/capistrano-rails-secret-key-base.git"
```

And then execute:

    $ bundle install

## Usage
Put this line into Capfile
```ruby
require 'capistrano/secret_key_base'  
```
And then

```
$ cap [stage] secret:update
```

Or invoke from another capistrano task

```
invoke("secret:update")
```
 
 
## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

