class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :User do |t|
      t.integer :user_id
      t.string :username
      t.string :fullname
      t.string :email
      t.string :password
      t.text :interests
      t.text :courses

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
    add_index :users, :password, unique: true
  end
end
