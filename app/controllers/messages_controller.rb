class MessagesController < ApplicationController
  before_action :set_conversation

  def create
    receipt = current_member.reply_to_conversation(@conversation, params[:body])
    if receipt.save
      ActionCable.server.broadcast 'room_channel',
                                   {
                                     content: receipt.message.body,
                                     sender: receipt.message.sender.name
                                   }
    else

    end
    redirect_to conversation_path(receipt.conversation)
  end

  private

  def set_conversation
    @conversation =
      current_member.mailbox.conversations.find(params[:conversation_id])
  end
end
