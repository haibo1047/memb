class AddPasswordDigestToSysUsers < ActiveRecord::Migration
  def change
    add_column :sys_users, :password_digest, :string
  end
end
