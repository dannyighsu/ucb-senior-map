class RemoveEmailConfirmedColumnFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :email_confirmed
    remove_column :users, :confirm_token
  end
  def down
    add_column :users, :email_confirmed, :boolean
    add_column :users, :confirm_token, :string
  end
end
