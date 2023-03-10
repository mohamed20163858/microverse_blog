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
    @comment = Comment.find(params[:comment_id].to_i)
    @post = Post.find_by(id: @comment.post_id)
    @user = User.find_by(id: @comment.author_id)
    @comment.destroy
    redirect_to user_post_path(@user, @post), status: :see_other
  end

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
end
