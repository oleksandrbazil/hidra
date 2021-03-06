class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :body
      t.references :commentable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
