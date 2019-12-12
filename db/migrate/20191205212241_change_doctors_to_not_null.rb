class ChangeDoctorsToNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :doctors, :description, true
    change_column_null :doctors, :college, true
    change_column_null :doctors, :collegiate_id, true
    change_column_null :doctors, :is_active, true
    change_column_null :doctors, :is_approved, true
    change_column_null :doctors, :is_pending, true
    change_column_null :doctors, :birthday, true
  end
end
