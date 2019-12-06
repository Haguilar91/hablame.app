class ConversationsController < ApplicationController

   def index
   # if current_user.mailbox.conversations
    #    @conversations = current_user.mailbox.conversations
    #else
    #    @conversations = current_doctor.mailbox.conversations
    #end

     @conversations = current_member.mailbox.conversations
   end

   def show
    #if current_user.mailbox.conversations
    #    @conversations = current_user.mailbox.conversations.find(params[:id])
    #else
    #    @conversations = current_doctor.mailbox.conversations.find(params[:id])
    #end

    @conversations = current_member.mailbox.conversations.find(params[:id])
   end

   def new
      @recipients = Doctor.all
   end

   def create

      recipient = Doctor.find(params[:doctor_id])
      receipt = current_user.send_message(recipient, params[:body],
      params[:subject])
      redirect_to conversation_path(receipt.conversation)


   end


end