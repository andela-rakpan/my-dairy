class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  
  def edit
  end

  def create
    @comment = Comment.create(comment_params)

    redirect_to :back
  end

  def update
    if @comment.update(comment_params)
      redirect_to event_path(@comment.event), alert: 'Comment was successfully updated.' 
    else
      redirect_to :back, notice: 'Comment could not be updated!' 
    end
  end

  def destroy
    event = @comment.event
    if @comment.destroy
      redirect_to event_path(event)
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment, :event_id)
  end
end
