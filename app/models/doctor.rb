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

class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable
         has_person_name
  validates :first_name, presence: true
  acts_as_messageable
  has_many :notes
  #has_one_attached :curriculum_path
  mount_uploader :curriculum_path, CurriculumUploader
  def mailboxer_email(object)
    if object.class == Mailboxer::Notification
      return nil
    else
      email
    end
  end
end
