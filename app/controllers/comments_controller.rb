class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to "/users/#{flash[:post_author_id]}/posts/#{@comment.post_id}" }
      else
        format.html { render "/users/#{flash[:post_author_id]}/posts/#{@comment.post_id}" }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])
    @comment = Comment.find_by(author_id: @user.id, post_id: @post.id)
    @comment.destroy
    redirect_to root_path, status: :see_other
  end

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
end
