class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
