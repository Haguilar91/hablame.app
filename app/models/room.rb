# == Schema Information
#
# Table name: rooms
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  doctor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Room < ApplicationRecord
    has_many :chats
    belongs_to :user
    belongs_to :doctor
end
