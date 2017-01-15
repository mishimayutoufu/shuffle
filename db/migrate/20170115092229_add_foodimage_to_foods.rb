class AddFoodimageToFoods < ActiveRecord::Migration
  def change
  	add_column :foods,:food_image_id, :text
  end
end
