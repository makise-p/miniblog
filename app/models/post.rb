class Post < ApplicationRecord
	# @post.commentsと後で引っ張ってこれる
	has_many :comments
	has_many :likes
	
	#入力必須
	validates :content, presence: true
end
