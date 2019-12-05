# == Schema Information
#
# Table name: services
#
#  id                  :bigint           not null, primary key
#  user_id             :bigint           not null
#  provider            :string(255)
#  uid                 :string(255)
#  access_token        :string(255)
#  access_token_secret :string(255)
#  refresh_token       :string(255)
#  expires_at          :datetime
#  auth                :text(65535)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
