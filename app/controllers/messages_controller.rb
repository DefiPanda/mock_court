class MessagesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @messages = Message.all
  end

  def create
  	puts @message
    @message = Message.create!(params[:message])
  end

end
