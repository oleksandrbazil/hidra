class RemoveOldRelations < ActiveRecord::Migration[5.0]
  def change
    drop_table :developers_projects
    remove_column :works, :client_id, :belongs_to
  end
end
