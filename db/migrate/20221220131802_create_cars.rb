class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.string :immat
      t.integer :price

      t.timestamps
    end
  end
end
