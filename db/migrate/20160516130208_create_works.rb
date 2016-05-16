class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :name
      t.string :description
      t.integer :progress
      t.integer :payment
      t.belongs_to :project, foreign_key: true, index: true
      t.belongs_to :developer, foreign_key: true, index: true
      t.belongs_to :client, foreign_key: true, index: true

      t.timestamps
    end
  end
end
