class AddIndicesToConversations < ActiveRecord::Migration
  def change
    add_index :conversations, :company_id
    add_index :conversations, :user_id
    add_index :conversations, :person_id
  end
end
