class CreateFoodImages < ActiveRecord::Migration
  def change
    create_table :food_images do |t|
	  t.integer  :image_id       
	  t.integer  :food_id
	  t.text    :image 
      t.timestamps 
    end
  end
end
