class ConversationsController < ApplicationController
before_action :authenticate_member!
   def index

     @conversations = current_member.mailbox.conversations
     

   end

   def show


    @conversation = current_member.mailbox.conversations.find(params[:id])
    @user = User.find_by_id(@conversation.participants.find { |p| p != current_doctor })

if (current_doctor)
    if(Note.find_by user_id: @user.id)
      @note=Note.find_by user_id: @user.id
    else
      @note=Note.new
    end
end
      
  
   end

   def new
      @recipients = Doctor.find_by_id(params[:doctor_id])
      recipient = Doctor.find(params[:doctor_id])
      

    
   end

   def create

      recipient = Doctor.find(params[:user_id])
      receipt = current_member.send_message(recipient, params[:body],params[:subject])
      redirect_to conversation_path(receipt.conversation)


   end


end
