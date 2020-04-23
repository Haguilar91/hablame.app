require "administrate/field/base"

class IsActiveField < Administrate::Field::Base
  def to_s
    data
  end
def get_doctor
  doctor = Doctor.find_by_id(:id)
  #status = doctor.is_active
#    doctor=Doctor.find_by_id(params[doctor_id])
 end

 



end
