class RenameRoomToRoomId < ActiveRecord::Migration[6.0]
  def change
    rename_column :chats, :room, :room_id
  end
end
