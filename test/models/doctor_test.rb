# == Schema Information
#
# Table name: doctors
#
#  id                     :bigint           not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string(255)      not null
#  last_name              :string(255)      not null
#  curriculum_path        :string(255)      not null
#  college                :string(255)      not null
#  collegiate_id          :string(255)      not null
#  is_active              :integer          not null
#  is_approved            :integer          not null
#  is_pending             :integer          not null
#  birthday               :date             not null
#  description            :text(65535)
#

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
