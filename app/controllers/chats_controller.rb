class ChatsController < ApplicationController
    def new
        @chat = Chat.new
    end

    def index
       @chat = Chat.new
    end

    def create
        @chat = Chat.create(msg_params)
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
end
