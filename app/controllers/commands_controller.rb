class CommandsController < ApplicationController
	protect_from_forgery

	def create
		command = params.fetch('command')
		command_parameters = params.fetch('text')
		case command
		when '/testhello'
			render json:'hello', status: :ok
		when '/helpeecount'


			@client = Airtable::Client.new("keysLF5bncTFH50wm")
		
			helpees_table = @client.table("app3JvjS2LKzXALwY", "Helpees")
			render text: "There are #{helpees_table.records.count} helpees", status: :ok
		end

  end
  
end
