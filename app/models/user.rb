# == Schema Information
#
# Table name: users
#
#  id                         :bigint           not null, primary key
#  email                      :string(255)      default(""), not null
#  encrypted_password         :string(255)      default(""), not null
#  reset_password_token       :string(255)
#  reset_password_sent_at     :datetime
#  remember_created_at        :datetime
#  first_name                 :string(255)
#  last_name                  :string(255)
#  announcements_last_read_at :datetime
#  admin                      :boolean          default(FALSE)
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  username                   :string(255)      not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable
  validates :username, uniqueness: true, presence: true

  has_person_name
  acts_as_messageable
  has_many :notifications, foreign_key: :recipient_id
  has_many :services
  has_rich_text :body

  def mailboxer_email(object)

    if object.class==Mailboxer::Notification
      return nil
    else
      email
    end
 end
 
end
