class AddSenderAndRecipientIdsToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :sender, foreign_key: { to_table: :users }
    add_reference :chatrooms, :recipient, foreign_key: { to_table: :users }
  end
end
