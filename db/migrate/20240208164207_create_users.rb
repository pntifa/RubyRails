class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fullname
      t.string :email
      t.string :password_digest
      t.text :interests
      t.text :courses

      t.timestamps
    end
  end
end
