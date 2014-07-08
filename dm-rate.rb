require 'bundler'
require 'base64'
require 'date'
require 'sinatra'
require 'net/http'
require 'nokogiri'
require "uri"
require "json"

Bundler.require
include Mongo

# configuration
configure :development do
  MongoMapper.setup({'development' => {'uri' => 'mongodb://root:root@localhost:27017/dm-rate'}}, 'development')
end



## project includes

# helpers
require './helper/partials.rb'
require './helper/CountryHelper.rb'
# models

# controllers
require './controller/AppController.rb'
require './controller/ReviewController.rb'
#require './controller/UserController.rb'
