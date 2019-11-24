class CreatePsychologists < ActiveRecord::Migration[6.0]
  def change
    create_table :psychologists do |t|
      t.string :first_name
      t.string :last_name
      t.integer :status
      t.string :collegiate_id
      t.string :college
      t.text :description
      t.string :curriculum
      t.string :photo
      t.integer :is_approved
      t.integer :is_active
      t.string :tags
      t.string :office_address

      t.timestamps
    end
  end
end
