class Post < ApplicationRecord
	# @post.comments‚ÆŒã‚Åˆø‚Á’£‚Á‚Ä‚±‚ê‚é
	has_many :comments
	has_many :likes
	
	#“ü—Í•K{
	validates :content, presence: true
end
