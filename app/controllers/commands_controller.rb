class CommandsController < ApplicationController
	protect_from_forgery

	def create
		command = params.fetch('command')
		command_parameters = params.fetch('text')
		@client = Airtable::Client.new("keysLF5bncTFH50wm")
		helpees_table = @client.table("app3JvjS2LKzXALwY", "Helpees")
		helpors_table = @client.table("app3JvjS2LKzXALwY","Helpors")

		case command
		when '/testhello2'
			result = {
				text: "message coucou",
				attachments: [{
					color: "#ff0000",
					text: "message attachement"
				}]
			}
			render json: result, status: :ok
		when '/count'
			render text: "There are #{helpees_table.records.count} helpees and #{helpors_table.records.count} helpors", status: :ok
		end

		when '/testhello'
			result = {
				attachments: [
    {
      "color": "#eb7e35",
      "thumb_url": "http://www.underconsideration.com/brandnew/archives/google_2015_logo_detail.png",
      "text": "Senior tech executive with a decade experience leading large, globally distributed engineering teams, and turning innovation into material business impact.",
      "author_icon": "https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/2/000/22f/044/3561252.jpg",
      "author_link": "https://www.linkedin.com/in/lucvincent/",
      "mrkdwn_in": [
        "text",
        "pretext",
        "fields"
      ],
      "pretext": "Here is some information about Luc Vincent",
      "attachment_type": "default",
      "author_subname": "Google",
      "title": "Bio",
      "fields": [
        {
          "title": "Experience in management",
          "value": "10 years",
          "short": false
        },
        {
          "title": "Specialties",
          "value": "Team reaction, One-on-one, Internal Communication, Feedback, Colleague complaints, Rockstar developer, Toxic employee, Legitimacy, Career path, Convincing, Promotion",
          "short": false
        },
        {
          "title": "Stories",
          "value": "- Team player vs. high performer\n- Experimenting with management",
          "short": false
        }
      ],
      "footer": "Helpor since January 2017",
      "author_name": "Luc Vincent, Senior Director of Engineering"
    }
  ]

			render json: result, status: :ok



				]
			}
		end

  end
  
end
