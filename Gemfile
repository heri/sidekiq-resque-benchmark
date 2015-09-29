source 'https://rubygems.org'

platforms :ruby do
  gem 'sqlite3'
end

platforms :jruby do
  gem 'jruby-openssl'
  gem 'activerecord-jdbcsqlite3-adapter'
end

gem 'rails'
gem 'faraday'
gem 'sidekiq', :path => '..'
#gem 'ruby-prof'

#de Does not work with jruby or rbx:
#de gem 'pry-byebug'

# sidekiq-web dependencies
gem 'sinatra'
gem 'resque'
