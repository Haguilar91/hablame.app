class RenamePsychologistTo < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :psychologist, :doctor_id
  end
end
