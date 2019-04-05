class ChangeColumnRoleInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :role, 'integer USING CAST(role AS integer)', default: 0
    # change_column :users, :role, :integer, default: 0
  end
end
