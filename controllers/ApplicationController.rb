class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'platform'
		)

	set :views, File.dirname(__FILE__) + '/../views'

	get '/' do
		"Hello World"
	end

end