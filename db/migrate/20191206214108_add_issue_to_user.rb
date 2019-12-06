class AddIssueToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :issue, :text
  end
end
