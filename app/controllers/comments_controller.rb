class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  before_filter :find_forum, only: [:create, :update]
  def index
    @comments = @forum.comments.all
    respond_to do |format|
      format.json {render json: @comments.as_json }
      format.html
    end
  end

  def create
    # @comment = @forum.comments.find params[:id]
    @comment = @forum.comments.create comment_params
    respond_to do |format|
      format.json { render json: @comment.as_json}
    end
  end

  def update
    # @comment = @forum.comments.find params[:id]
    @comment.update_attributes comment_params
    respond_to do |format|
      format.json { render json: @comment.as_json}
    end
  end

  def destroy
    @comment = @forum.comments.find params[:id]
    @comment.delete
    respond_to do |format|
      format.json { render json: @comment.as_json}
    end
  end

private
  def find_forum
    @forum = Forum.find params[:forum_id]
  end
  def comment_params
    params.require(:comment).permit(:name, :content, :forum_id, :user_name, :user_id).merge(user_name: current_user.name, user_id: current_user.id)
  end
end
