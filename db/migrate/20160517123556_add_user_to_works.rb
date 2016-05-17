class AddUserToWorks < ActiveRecord::Migration[5.0]
  def change
    add_reference :works, :user, foreign_key: true, index: true
  end
end
