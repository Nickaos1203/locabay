class CreateHouses < ActiveRecord::Migration[7.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :description
      t.string :address
      t.float :price
      t.string :picture
      t.boolean :available

      t.timestamps
    end
  end
end
