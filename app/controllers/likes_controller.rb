class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.author = current_user

    respond_to do |format|
      if @like.save
        format.html { redirect_to "/users/#{flash[:post_author_id]}/posts/#{@like.post_id}" }
      else
        format.html { render "/users/#{flash[:post_author_id]}/posts/#{@like.post_id}" }
      end
    end
  end

  def like_params
    params.require(:like).permit(:post_id)
  end
end
