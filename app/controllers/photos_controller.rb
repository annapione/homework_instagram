class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_number=params[:id]
    i=Photo.find(@photo_number)
    @photo_source=i.source
    @photo_caption=i.caption
  end

  def new_form
  end

  def create_row
    @new = Photo.new
    @new.caption= params[:the_caption]
    @new.source= params[:the_source]
    @new.save
  end

  def destroy
    @photo_number=params[:id]
    i=Photo.find(@photo_number)
    i.destroy
  end

  def edit_form
    @photo_number=params[:id]
    i=Photo.find(@photo_number)
    @photo_source=i.source
    @photo_caption=i.caption
  end

  def update_row
    @photo_number=params[:id]
    @edit=Photo.find(@photo_number)
    @edit.caption= params[:the_caption]
    @edit.source= params[:the_source]
    @edit.save
  end

end
