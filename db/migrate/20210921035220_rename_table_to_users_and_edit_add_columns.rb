class RenameTableToUsersAndEditAddColumns < ActiveRecord::Migration[6.1]
  def change
    rename_table :authors, :users
  end
end
