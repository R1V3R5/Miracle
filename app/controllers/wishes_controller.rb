class WishesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_wish, only: [:show, :edit, :update, :destroy]

  def index
    authorize! :read, Wish 
    @groups = Group.all
    @group_items= GroupItem.all
    @group_items = GroupItem.where("id=?", params[:id])
    @wishes = Wish.all.accessible_by(current_ability, :manage)
    respond_with(@wishes)
  end

  def show
    authorize! :read, Wish 
    respond_with(@wish)
  end

  def new
    authorize! :create, Wish
    @groups = Group.all
    @group_items = GroupItem.all
    @wish = Wish.new
    respond_with(@wish)
  end

  def edit
    authorize! :update, Wish
  end

  def create
    authorize! :create, Wish
    @wish = Wish.create wish_params
    # create wish_items for the wish based on each checkbox you select
    redirect_to wishes_path
  end

  def update
    authorize! :update, Wish
    @wish.update wish_params
    respond_with(@wish)
  end

  def destroy
    authorize! :destroy, Wish
    @wish.destroy
    respond_with(@wish)
  end

  private
    def set_wish
      @wish = Wish.find(params[:id])
    end

    def wish_params
      params.require(:wish).permit(
                    :title, 
                    :feature, 
                    :specification, 
                    :user_id ,
                    :group_id,
                    [group_item_ids: []]
                    ).merge(user_id: current_user.id)
    end
    # def wish_item_params
    #   params.require(:wish_item).permit(:user_id, :group_item_id, :wish_id).merge(user_id: current_user.id)
    # end
end
