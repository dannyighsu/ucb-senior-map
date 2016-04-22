class AddSchoolAndDescriptionColumnsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :school, :string
    add_column :users, :description, :text
    add_column :users, :major, :text

  end

  def down
    remove_column :users, :school
    remove_column :users, :description
    remove_column :users, :major

  end

end
