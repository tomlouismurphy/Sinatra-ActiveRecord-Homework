class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	get '/' do
		"Hello World"
	end

end