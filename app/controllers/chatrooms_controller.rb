class ChatroomsController < ApplicationController
  def create
    @chatroom = Chatroom.new
    @chatroom.sender = current_user
    @chatroom.recipient = @offer.user
    @chatroom.save
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
