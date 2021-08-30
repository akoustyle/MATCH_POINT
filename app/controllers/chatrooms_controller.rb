class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @new_message = Message.new
    authorize @chatroom
  end

end
