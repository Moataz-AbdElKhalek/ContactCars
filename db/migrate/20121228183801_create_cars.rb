class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.date :year
      t.integer :engine
      t.integer :price
      t.text :notes
      t.binary :image
      t.text :owner

      t.timestamps
    end
  end
end
