require 'bundler'
require 'base64'
require 'date'
require 'sinatra'
require 'net/http'
require 'nokogiri'
require "uri"
require "json"

Bundler.require

## project includes

# helpers
require './helper/partials.rb'
require './helper/CountryHelper.rb'
# models

# controllers
require './controller/AppController.rb'
require './controller/ReviewController.rb'

