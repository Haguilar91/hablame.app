class WallsController < ApplicationController
  before_action :authenticate_user!
  def show_all_doctors
    if (current_user)
    @conversation = current_user.mailbox.conversations.last.find(current_user.id)
    @current_doctor = @conversation.participants.find{|p| p != current_user}
    end
   
    @doctors = Doctors.all
    
  end

  def doctor_index; end
end
