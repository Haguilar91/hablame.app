class RenamePatientToUserId < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :patient, :user_id
  end
end
