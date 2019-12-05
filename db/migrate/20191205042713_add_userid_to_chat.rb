class AddUseridToChat < ActiveRecord::Migration[6.0]
  def change
    add_column :chats, :user_id, :string
  end
end
