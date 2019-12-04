class AddDescriptionToDoctor < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :description, :text
  end
end
