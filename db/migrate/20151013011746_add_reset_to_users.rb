class AddResetToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reset_digest, :stringreset_sent_at
  end
end
