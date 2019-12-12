class AddToDoctor < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :first_name, :string, null: false
    add_column :doctors, :last_name, :string, null: false
    add_column :doctors, :curriculum_path, :string, null: false
    add_column :doctors, :college, :string, null: false
    add_column :doctors, :collegiate_id, :string, null: false
    add_column :doctors, :is_active, :integer, null: false
    add_column :doctors, :is_approved, :integer, null: false
    add_column :doctors, :is_pending, :integer, null: false
    add_column :doctors, :birthday, :date, null: false
  end
end
