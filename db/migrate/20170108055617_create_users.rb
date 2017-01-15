class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string   :name         
	  t.integer  :user_id       
	  t.string   :gender       
	  t.text	 :profile_image
      t.timestamps 
    end
  end
end
