class ChangeCurriculumPathToNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :doctors, :curriculum_path, true
  end
end
