class ConversationsController < ApplicationController
before_action :authenticate_member!
   def index

     @conversations = current_member.mailbox.conversations
     #@recipient = @conversations.participants.find { |p| p != current_member } 

   end

   def show


    @conversation = current_member.mailbox.conversations.find(params[:id])
   end

   def new
      @recipients = Doctor.find_by_id(params[:doctor_id])
      recipient = Doctor.find(params[:doctor_id])


      #@recipients = Doctor.all
   end

   def create

      recipient = Doctor.find(params[:user_id])
      receipt = current_member.send_message(recipient, params[:body],params[:subject])
      redirect_to conversation_path(receipt.conversation)


   end


end