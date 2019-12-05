class ChatsController < ApplicationController
    def new
        @chat = Chat.new
    end

    def index
       @chat = Chat.new
       @room = Room.new
    end

    def create

        @chat = Chat.create(msg_params)
        if !room_found
        @chat.room_id = Room.maximum(:id)+1
        else
        @chat.room_id = @room_found.id
        end
        @room = Room.create

    if @chat.save
        ActionCable.server.broadcast "room_channel",
                                        content: @chat.message
    else
    end

    end

    private
    def msg_params
        params.require(:chat).permit(:message)
    end

    def find_room
        @room_found=Room.where("user_id = :name AND doctor_id = :doctor_id", user_id: current_user.id doctor_id: params[doctor_id])
    end
end
