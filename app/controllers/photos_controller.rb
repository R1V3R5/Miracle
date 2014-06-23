class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_photo, only: [:show, :edit, :update, :destroy]  
  
  def index
    authorize! :read, Photo
    @photos = Photo.all.accessible_by(current_ability, :manage)
  end

  def new
    authorize! :create, Photo
    @photo = Photo.new
  end

  def create
    authorize! :create, Photo
    @photo = Photo.new photo_params
    @photo.save
    respond_with(@photo)
  end

  def update
    authorize! :update, Photo
    @photo.update_attributes photo_params
    redirect_to photos_path
  end

  def edit
    authorize! :update, Photo
  end

  def destroy
    authorize! :destroy, Photo
    @photo.destroy
    redirect_to photos_path
  end

  def show
  authorize! :read, Photo
  end

private
  def photo_params
    params.require(:photo).permit(:image, :title, :user_id).merge(user_id: current_user.id)
  end

  def find_photo
    @photo = Photo.find params[:id]
  end

end