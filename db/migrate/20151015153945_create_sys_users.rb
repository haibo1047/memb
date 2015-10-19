class CreateSysUsers < ActiveRecord::Migration
  def change
    create_table :sys_users do |t|
      t.string :userName
      t.string :password
      t.string :mobile
      t.string :email

      t.timestamps null: false
    end
  end
end
