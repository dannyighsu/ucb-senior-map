class AddLatLon < ActiveRecord::Migration
  def up
    add_column :users, :lat, :float
    add_column :users, :lon, :float
  end
  def down
    remove_column :users, :lat
    remove_column :users, :lon
  end
end
