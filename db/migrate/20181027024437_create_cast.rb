class CreateCast < ActiveRecord::Migration[5.2]
  def change
    create_table :casts do |t|
      t.string :name
      t.timestamps
    end
  end
end
