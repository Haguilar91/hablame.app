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

require 'test_helper'

class NotificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
