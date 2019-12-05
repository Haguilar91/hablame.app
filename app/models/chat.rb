# == Schema Information
#
# Table name: chats
#
#  id         :bigint           not null, primary key
#  message    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer
#  user_id    :string(255)
#

class Chat < ApplicationRecord
    belongs_to :room
end
