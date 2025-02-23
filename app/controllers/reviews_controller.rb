class ReviewsController < ApplicationController

  def create
    comic = PostImage.find(params[:comic_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.comic_id = comic.id
    comment.save
    redirect_to comic_path(comic)
  end

  def destroy
    PostComment.find(params[:id]).destroy
    redirect_to comic_path(params[:comic_id])
  end
  

  private

  def comic_review_params
    params.require(:comic_review).permit(:comment)
  end

end
