class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :Brand
      t.string :Model
      t.date :Year
      t.string :Engine
      t.integer :Price
      t.text :Notes
      t.string :Image
      t.string :Owner

      t.timestamps
    end
  end
end
