class CommandsController < ApplicationController
	protect_from_forgery

	def create
		command = params.fetch('command')
		command_parameters = params.fetch('text')
		@client = Airtable::Client.new("keysLF5bncTFH50wm")
		helpees_table = @client.table("app3JvjS2LKzXALwY", "Helpees")
		helpors_table = @client.table("app3JvjS2LKzXALwY","Helpors")

		case command
		when '/testhello'
			result = {
				text: "message coucou",
				attachments: [{
					color: "#ff0000",
					text: "message attachement"
				}]
			}
			render json: result, status: :ok
		when '/count'
			render text: "There are #{helpees_table.records.count} helpees", status: :ok
			render text: "There are #{helpors_table.records.count} helpors", status: :ok
		end

  end
  
end
