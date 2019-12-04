class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :patient
      t.integer :psychologist

      t.timestamps
    end
  end
end
