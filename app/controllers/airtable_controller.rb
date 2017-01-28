class AirtableController < ApplicationController
  def index
  		@client = Airtable::Client.new("keysLF5bncTFH50wm")
		
		@helpees_table = @client.table("app3JvjS2LKzXALwY", "Helpees")
		@helpees_records = @helpees_table.records

		@companies_table = @client.table("app3JvjS2LKzXALwY", "Companies")
		@companies_records = @companies_table.records

		@helpors_table = @client.table("app3JvjS2LKzXALwY","Helpors")
		@helpors_records = @helpors_table.records

  end
end
