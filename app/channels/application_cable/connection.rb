module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_member

    def connect
      self.current_member = find_verified_user
      logger.add_tags 'ActionCable', "User #{current_member.id}"
    end

    protected

    def find_verified_user
      if verified_user = User.find_by(id: cookies.signed['user.id'])
        verified_user
      elsif verified_user = Doctor.find_by(id: cookies.signed['doctor.id'])
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
