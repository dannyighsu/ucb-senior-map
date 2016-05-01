class AddPersonalEmailColumnToUsers < ActiveRecord::Migration
  def up
    add_column :users, :personal_email, :string
  end
  def down
    remove_column :users, :personal_email
  end
end
