class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)

    # redirect_back(fallback_location: root_path)
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :event_id)
  end
end
