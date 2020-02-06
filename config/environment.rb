ENV['SINATRA_ENV'] ||= 'development'

# require everything in the Gemfile
require 'bundler/setup'
Bundler.require

# establish connection to db
set :database, {
  adapter: 'sqlite3',
  database: "db/#{ENV['SINATRA_ENV']}.sqlite3"
}

# require local files
require_all 'app'
