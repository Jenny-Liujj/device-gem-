class CreateUserways < ActiveRecord::Migration
  def change
    create_table :userways do |t|
      t.string :name
      t.string :password

      t.timestamps null: false
    end
  end
end
