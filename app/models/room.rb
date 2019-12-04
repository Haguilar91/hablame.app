class Room < ApplicationRecord
    has_many :chats
    belongs_to :user
    belongs_to :doctor
end
