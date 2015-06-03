class HomeController < ApplicationController
  def index
  	#@message = "haha"
  	@display = Message.all
  	@message = Message.new

  end

  private
   def message_params
   	 params.require(:message).permit(:content)
   end
  
  def reload
  	@message = Message.new(message_params)
  	
  	@message.save
  	redirect_to '/'
  	
  end

   
end
