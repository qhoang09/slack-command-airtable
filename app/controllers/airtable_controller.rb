class AirtableController < ApplicationController
  def index
  		@client = Airtable::Client.new("keysLF5bncTFH50wm")
		@table = @client.table("app3JvjS2LKzXALwY", "Helpees")
		@records = @table.records

  end
end
