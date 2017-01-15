class AddUserIdToShuffs < ActiveRecord::Migration
  def change
    add_column :shuffs, :user_id, :integer
  end
end
