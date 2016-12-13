class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_photo_album

  def create
    add_more_photos(photos_params[:photos])
    flash[:error] = 'Failed uploading images' unless @photo_album.save
    redirect_to :back
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = 'Failed deleting image' unless @photo_album.save
    redirect_to :back
  end

  private

  def set_photo_album
    @photo_album = PhotoAlbum.find(params[:photo_album_id])
  end

  def add_more_photos(new_images)
    images = @photo_album.photos
    images += new_images
    @photo_album.photos = images
  end

  def remove_image_at_index(index)
    remain_images = @photo_album.photos # copy the array
    deleted_image = remain_images.delete_at(index) # delete the target image
    deleted_image.try(:remove!) # delete image from S3
    @photo_album.photos = remain_images # re-assign back
  end

  def photos_params
    params.require(:photo_album).permit({ photos: [] }) # allow nested params as array
  end

end
