class RoomMessagesController < ApplicationController
  before_action :load_entities

  def create
    @room_message = RoomMessage.create user: current_user,
                                       room: @room,
                                       messages: params.dig(:room_message, :messages)

    RoomChannel.broadcast_to @room, @room_message

    head :no_content
  end

  protected

  def load_entities
    @room = Room.find params.dig(:room_message, :room_id)
  end
end
