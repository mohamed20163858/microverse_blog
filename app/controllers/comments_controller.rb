class CommentsController < ApplicationController
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

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
end
