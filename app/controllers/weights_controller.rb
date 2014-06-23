class WeightsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_weight, only: [:show, :edit, :update, :destroy]  
  
  def index
    authorize! :read, Weight
    @weights = Weight.all.accessible_by(current_ability, :manage)
  end

  def new
    authorize! :create, Weight
    @weight = Weight.new
  end

  def create
    authorize! :create, Weight
    @weight = Weight.new weight_params
    @weight.save
    respond_with(@weight)
  end

  def update
    authorize! :update, Weight
    @weight.update_attributes weight_params
    @weight.save
    respond_with(@weight)
  end

  def edit
    authorize! :update, Weight
  end

  def destroy
    authorize! :destroy, Weight
    @weight.destroy
    respond_with(@weight)
  end

  def show
    authorize! :read, Weight
  end

private

  def weight_params
    params.require(:weight).permit(:content, :user_id).merge(user_id: current_user.id)
  end

  def find_weight
    @weight = Weight.find params[:id]
  end
end
