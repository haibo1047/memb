class RemovePasswordFromSysUsers < ActiveRecord::Migration
  def change
    remove_column :sys_users, :password, :string
  end
end
