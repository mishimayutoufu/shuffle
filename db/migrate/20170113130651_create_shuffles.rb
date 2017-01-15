class CreateShuffles < ActiveRecord::Migration
  def change
    create_table :shuffles do |t|

      t.timestamps null: false
    end
  end
end
