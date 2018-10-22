class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.bigint :id
      t.string :name
      t.string :account
      t.string :email
      t.string :password
      t.string :thumbnail

      t.timestamps
    end
  end
end
