class FoodsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_food, only: [:show, :edit, :update, :destroy]  
  
  def index
    authorize! :read, Food
    @foods = Food.all.accessible_by(current_ability, :manage)
  end

  def new
    authorize! :create, Food
    @food = Food.new 
  end

  def create
    authorize! :create, Food
    @food = Food.new food_params
    @food.save
    respond_with(@food)
  end

  def update
    authorize! :update, Food
    @food.update_attributes food_params
    @food.save
    respond_with(@food)
  end

  def edit
    authorize! :update, Food

  end

  def destroy
    authorize! :destroy, Food
    @food.destroy
    respond_with(@food)
  end

  def show
    authorize! :read, Food
  end

private

  def food_params
    params.require(:food).permit(:meal, :drink, :user_id).merge(user_id: current_user.id)\
  end

  def find_food
    @food = Food.find params[:id]
  end
  
end