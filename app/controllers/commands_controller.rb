class CommandsController < ApplicationController
	protect_from_forgery
	
	def create

  	render json: "hello", status: :ok
  end
  
end
