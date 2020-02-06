class WelcomeController < ApplicationController
	skip_before_action :verify_authenticity_token
  def index

    if (!current_user)
      render file: 'home/index.html.erb'
    else
      @showall = Doctor.all
      render file: 'walls/show_all_doctors.html.erb'
    end
  end
end
