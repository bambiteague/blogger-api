class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :author
  end
end
