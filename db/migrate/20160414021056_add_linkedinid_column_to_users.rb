class AddLinkedinidColumnToUsers < ActiveRecord::Migration
  def up
    add_column :users, :linked_in_id, :string
  end
  def down
    remove_column :users, :linked_in_id
  end
end
