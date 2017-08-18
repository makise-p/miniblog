class CommentsController < ApplicationController

  def create
	@post = Post.find(params[:post_id])
	@post.comments.create(comment_params)
  end

  private
	def comment_params
	  params.require(:comment).permit(:body)
	end
end
