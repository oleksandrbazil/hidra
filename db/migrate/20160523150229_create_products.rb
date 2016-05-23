class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :description
      t.decimal :price, precision: 8, scale: 2, null: false
      t.integer :quantity, defalut: nil

      t.timestamps
    end
  end
end
