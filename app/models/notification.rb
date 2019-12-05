# == Schema Information
#
# Table name: notifications
#
#  id              :bigint           not null, primary key
#  recipient_id    :bigint
#  actor_id        :bigint
#  read_at         :datetime
#  action          :string(255)
#  notifiable_id   :bigint
#  notifiable_type :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Notification < ApplicationRecord
  belongs_to :recipient, class_name: "User"
  belongs_to :actor, class_name: "User"
  belongs_to :notifiable, polymorphic: true
  
  scope :unread, -> { where(read_at: nil) }
  scope :recent, -> { order(created_at: :desc).limit(5) }

  def self.post(to:, from:, action:, notifiable:)
    recipients = Array.wrap(to)
    notifications = []

    Notification.transaction do
      notifications = recipients.uniq.each do |recipient|
        Notification.create(
          notifiable: notifiable,
          action:     action,
          recipient:  recipient,
          actor:      from
        )
      end
    end
    notifications
  end
end
