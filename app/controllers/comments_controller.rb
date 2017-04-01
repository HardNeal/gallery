class CommentsController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
     redirect_to @photo
  end

  private

  def comment_params
    params.require(:comment).permit(:msg, :rate, :user_id)
  end

end
