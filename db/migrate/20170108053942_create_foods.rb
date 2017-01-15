class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|

	  t.string   :name         
	  t.integer  :food_id       
	  t.text	 :address     
	  t.string   :price
	  t.integer	 :number
      t.timestamps
    end
  end
end
