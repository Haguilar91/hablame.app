# == Schema Information
#
# Table name: announcements
#
#  id                :bigint           not null, primary key
#  published_at      :datetime
#  announcement_type :string(255)
#  name              :string(255)
#  description       :text(65535)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
