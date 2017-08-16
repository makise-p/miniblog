class PostsController < ApplicationController
  def index
  	@posts = Post.all.order(created_at: 'desc')
  	@post = Post.new
    #like拡張機能
    @likes = Like.where(params[:post_id])
  end

  def show
    @post = Post.find(params[:id])
    @likes = Like.where(params[:post_id])
  end

  def new
  end

  def like
  end


  def create
  	#render plain: params[:post].inspect
  	#save
  	#@post = Post.new(params[:post])
  	#@post = Post.new(params.require(:post).permit(:content))
  	@post = Post.new(post_params)

  	if @post.save
  		#redirect
  		redirect_to posts_path
  	else
  		#render plain: @post.errors.inspect
  		render 'index'
  	end

  end

  private
	def post_params
	  params.require(:post).permit(:content)
	end

end
