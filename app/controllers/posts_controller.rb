class PostsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id].to_i)
  end

  def show
    @post = Post.find_by(id: params[:id].to_i)
  end
end
