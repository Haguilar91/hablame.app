class AddRoomToChat < ActiveRecord::Migration[6.0]
  def change
    add_column :chats, :room, :integer
  end
end
