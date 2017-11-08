require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/UsersController'

require './models/User'

map ('/') {run ApplicationController}
map ('/home') {run HomeController}
map ('/users') {run UserController}