class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Password
      t.string :Phone
      t.string :Address
      t.timestamps
    end
  end
end
