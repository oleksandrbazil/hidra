class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :kind

      t.timestamps
    end
    add_reference :projects, :client, index: true
  end

end
