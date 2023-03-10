class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find_by(id: params[:user_id].to_i)
  end

  def show
    @post = Post.find_by(id: params[:id].to_i)
    @comment = Comment.new
    @like = Like.new
    @user = current_user
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user
    respond_to do |format|
      if @post.save
        format.html { redirect_to "/users/#{current_user.id}/posts/#{@post.id}" }
      else
        format.html { render "/users/#{current_user.id}/posts/#{@post.id}" }
      end
    end
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
