class AddSchoolAndDescriptionColumnsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :school, :string
    add_column :users, :description, :text
  end

  def down
    remove_column :users, :school
    remove_column :users, :description
  end

end
