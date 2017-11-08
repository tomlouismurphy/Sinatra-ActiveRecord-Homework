require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'

map ('/') {runApplicationController}
map ('/home') {run HomeController}