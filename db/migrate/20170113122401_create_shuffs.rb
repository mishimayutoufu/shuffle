class CreateShuffs < ActiveRecord::Migration
  def change
    create_table :shuffs do |t|

      t.timestamps
    end
  end
end
