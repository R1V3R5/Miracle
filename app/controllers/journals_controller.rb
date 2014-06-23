class JournalsController < ApplicationController
  before_action :authenticate_user! 
  #load_and_authorize_resource
  before_filter :find_journal, only: [:show, :edit, :update, :destroy]  
  
  def index
    authorize! :read, Journal
    @journals = Journal.all.accessible_by(current_ability, :manage)
  end
  
  def new
    authorize! :create, Journal
    @journal = Journal.new
  end

  def create
    authorize! :create, Journal
    @journal = Journal.new journal_params
    if @journal.save
      respond_with(@journal)
    end
  end

  def update
    authorize! :update, Journal
    @journal.update_attributes journal_params
    redirect_to root_path
  end

  def edit
    authorize! :update, Journal
  end

  def destroy
    authorize! :destroy, Journal
    @journal.destroy
    redirect_to root_path
  end

  def show
    authorize! :read, Journal
  end

  private
    def journal_params
      params.require(:journal).permit(:title, :content, :tags, :author).merge(user_id: current_user.id)
    end

    def find_journal
      @journal = Journal.find params[:id]
    end
end