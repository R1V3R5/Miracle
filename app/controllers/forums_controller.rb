class ForumsController < ApplicationController

  def index
    @forums = Forum.all
    @forum = Forum.includes(:comments).where("id=?", params[:id]).first
    respond_to do |format|
      format.html
      format.json {render json: @forums.as_json(include: [:comments] )}
    end
  end

  def create
    @forum = Forum.create forum_params
    respond_to do |format|
      format.json { render json: @forum.as_json}
    end
  end

  def update
    @forum = Forum.find params[:id]
    @forum.update_attributes forum_params
    respond_to do |format|
      format.json { render json: @forum.as_json}
    end
  end

  def destroy
    @forum = Forum.find params[:id]
    @forum.delete
    respond_to do |format|
      format.json { render json: @forum.as_json}
    end
  end

private
  def forum_params
    params.require(:forum).permit(:name)
  end
end
