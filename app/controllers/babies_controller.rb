class BabiesController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_baby, only: [:show, :edit, :update, :destroy]  
  
  def index
    authorize! :read, Baby
    @babies = Baby.all.accessible_by(current_ability, :manage)
  end

  def new
    authorize! :create, Baby
    @baby = Baby.new
  end

  def create
    authorize! :create, Baby
    @baby = Baby.new baby_params
    @baby.save
    respond_with(@baby)
  end

  def update
    authorize! :update, Baby
    @baby.update_attributes baby_params
    @baby.save
    respond_with(@baby)
  end

  def edit
    authorize! :update, Baby
  end

  def destroy
    authorize! :destroy, Baby
    @baby.destroy
    respond_with(@baby)
  end

  def show
    authorize! :read, Baby
  end

private
  def baby_params
    params.require(:baby).permit(:name).merge(user_id: current_user.id)
  end

  def find_baby
    @baby = Baby.find params[:id]
  end  
end