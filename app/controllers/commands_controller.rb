class CommandsController < ApplicationController
	def create
#    return render json: {}, status: 403 unless valid_slack_token?
 #   CommandWorker.perform_async(command_params.to_h)
  	render json: "hello", status: :ok
  end
  
end
