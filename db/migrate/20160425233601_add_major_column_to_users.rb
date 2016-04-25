class AddMajorColumnToUsers < ActiveRecord::Migration
  def up
    add_column :users, :major, :string
  end
  def down
    remove_column :users, :major
  end
end
