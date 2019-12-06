class ConversationsController < ApplicationController

   def index

     @conversations = current_member.mailbox.conversations
   end

   def show


    @conversation = current_member.mailbox.conversations.find(params[:id])
   end

   def new
      @recipients = Doctor.all
   end

   def create

      recipient = Doctor.find(params[:user_id])
      receipt = current_member.send_message(recipient, params[:body],params[:subject])
      redirect_to conversation_path(receipt.conversation)


   end


end