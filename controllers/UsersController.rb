class UserController < ApplicationController

	get '/' do
		@users = User.all
		@users.to_json
	end

	post '/' do
		@user = User.new
		@user.username = params[:username]
		@user.hometown = params[:hometown]
		@user.birthYear = params[:birthYear]
		@user.birthMonth = params[:birthMonth]
		@user.birthDay = params[:birthDay]
		@user.save
		'saved'
	end

	put '/:id' do
		@user = User.find_by(id: params[:id])
		@user.username = params[:username]
		@user.hometown = params[:hometown]
		@user.birthYear = params[:birthYear]
		@user.birthMonth = params[:birthMonth]
		@user.birthDay = params[:birthDay]
		@user.save
		'saved'
	end

	delete ':/id' do
		@user = User.find_by(id: params[:id])
		@user.delete
		'deleted'
	end

end