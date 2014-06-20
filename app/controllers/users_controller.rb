class UsersController < ApplicationController

	def new
	end

	def create
		
		
		d=Date.new(params[:user]["bday(1i)"].to_i, params[:user]["bday(2i)"].to_i, params[:user]["bday(3i)"].to_i)
		@newUser = User.new
		@newUser.name = params[:user][:name]
		@newUser.mail = params[:user][:mail]
		@newUser.pass = params[:user][:pass]
		@newUser.bday = d
		@newUser.job = params[:user][:job]
		@newUser.naturality = params[:user][:naturality]
		@newUser.save
		redirect_to @newUser	 
	end

	def show
  		@user = User.find(params[:id])
	end
end

#rails generate model User name:string mail:string pass:string bday:datetime sex:string job:string naturality:string
