class AddDoctorIdToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :doctor_id, :integer
  end
end
