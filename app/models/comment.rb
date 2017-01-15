class Comment < ActiveRecord::Base
	belongs_to :foods              #tweetsテーブルとのアソシエーション
	belongs_to :user 
end
