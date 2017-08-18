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

  def likes
    @likes = Like.where(params[:post_id])
    if likes_count = likes_count + 1
      redirect_to posts_path
    end
  end

  def change
    @likes = Like.where(params[:post_id])
    redirect_to posts_path
  end


  def create
  	#render plain: params[:post].inspect
  	#save
  	#@post = Post.new(params[:post])
  	#@post = Post.new(params.require(:post).permit(:content))
  	@post = Post.new(post_params)
    @likes = Like.where(params[:post_id])

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
