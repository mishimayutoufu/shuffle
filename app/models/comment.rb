class Comment < ActiveRecord::Base
	belongs_to :food              #tweetsテーブルとのアソシエーション
	belongs_to :user 
end
