class RoomsController < ApplicationController
    before_action :authenticate_user!

    def create
        @room = Room.new
        @room.user_id = current_user.id
        @room.doctor_id = params[:doctor_id]
        @room.save
    end

    def index
       @room = Room.new
    end

#   def room_params
   #     params.require(:room).permit(:user_id, :doctor_id)
#end
end
