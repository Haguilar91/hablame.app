#class User::ParameterSanitizer < Devise::ParameterSanitizer
 # def initialize(*)
  #  super
 #   permit(:sign_up, keys: [:username, :email, :name, :first_name, :last_name, :admin, :age, :issue, :password, :password_confirmation ])
 # end
#end

#class Doctor::ParameterSanitizer < Devise::ParameterSanitizer
  #def initialize(*)
    #super
    #permit(:sign_up, keys: [:username, :email, :name, :first_name, :last_name, :password, :password_confirmation, :encrypted_password,:collegiate_id, :curriculum_path, :is_active, #:is_pending, :birthday, :description, :price, ])
 # end
#end

class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  prepend_before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :masquerade_user!

  protected

  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:username,:college,:description,:collegiate_id,:email])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:name,:username,:college,:description,:collegiate_id,:email])
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(
        :name,
        :username,
        :first_name,
        :last_name,
        :college,
        :description,
        :collegiate_id,
        :email,
        :password,
        :password_confirmation,
        :curriculum_path,
        :remove_curriculum_path,
        :birthday,
        :age
      )
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(
        :name,
        :first_name,
        :last_name,
        :username,
        :college,
        :description,
        :collegiate_id,
        :email,
        :remove_curriculum_path,
        :password,
        :password_confirmation,
        :current_password,
        :curriculum_path,
        :birthday,
        :notes,
        :age
      )
    end
  end
  #def after_sign_in_path_for(resource)
  #   redirect_to "landing#index"
  # end

  def set_locale
    I18n.locale = I18n.default_locale
  end

  devise_group :member, contains: %i[user doctor]

  private

  def pundit_user
    # Make Pundit to use whichever Devise model [Organizer, Sponsor, User] as the 'current_user'
    # Just by using the offered helper method from Devise, 'devise_group' feature
    current_member
  end
end
