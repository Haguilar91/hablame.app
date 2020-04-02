class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  prepend_before_action :set_locale
  #before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :masquerade_user!

  protected

  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:username,:college,:description,:collegiate_id,:email])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:name,:username,:college,:description,:collegiate_id,:email])
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(
        :name,
        :username,
        :college,
        :description,
        :collegiate_id,
        :email,
        :password,
        :password_confirmation,
        :curriculum_path,
        :birthday
      )
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(
        :name,
        :username,
        :college,
        :description,
        :collegiate_id,
        :email,
        :password,
        :password_confirmation,
        :current_password,
        :curriculum_path,
        :birthday,
        :notes
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
