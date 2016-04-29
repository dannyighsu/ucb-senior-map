class AddConfirmableToUsers < ActiveRecord::Migration
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string
  end
  def down
    drop_column :users, :confirmation_token
    drop_column :users, :confirmed_at
    drop_column :users, :confirmation_sent_at
    drop_column :users, :unconfirmed_email
  end
end
