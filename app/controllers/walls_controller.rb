class WallsController < ApplicationController
    before_action :authenticate_user!
    def show_all_doctors
        @doctors=Doctors.all
    end

    def doctor_index
        
    end
    


end
