class MilestonesController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_milestone, only: [:show, :edit, :update, :destroy]

  def new
    authorize! :create, Milestone
    @milestone = Milestone.new
  end

  def create
    authorize! :create, Milestone
    @milestone = Milestone.new milestone_params
    @milestone.save
    respond_with(@milestone)
  end

  def edit
    authorize! :update, Milestone
  end

  def update
    authorize! :update, Milestone
    @milestone.update_attributes milestone_params
    @milestone.save
    respond_with(@milestone)
  end

  def destroy
    authorize! :destroy, Milestone
    @milestone.destroy
    redirect_to milestones_path
  end

  def index
    authorize! :read, Milestone
    @milestones = Milestone.all.accessible_by(current_ability, :manage)
  end

  def show
    authorize! :read, Milestone
  end

private
  def milestone_params
    params.require(:milestone).permit(:title, :content, :date, :user_id).merge(user_id: current_user.id)
  end

  def find_milestone
    @milestone = Milestone.find params[:id]
  end

end
