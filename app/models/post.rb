class Post < ApplicationRecord
	# @post.comments�ƌ��ň��������Ă�����
	has_many :comments
	has_many :likes

	#���͕K�{
	validates :content, presence: true
end
