class PhotosController < ApplicationController
  def index
   if user_signed_in?
  	@photos = Photo.all
   else 
    redirect_to new_user_registration_path
   end
  end

  def show
  	@photo = Photo.find(params[:id])
  end

  def new
  if user_signed_in?
      @photo = Photo.new
    else
      redirect_to new_post_registration_path
    end
  end

  def create
  	if user_signed_in?
	    @photo = Photo.new(photo_params)
	    if @photo.save
	    redirect_to root_path
		  end
    else 
			redirect_to new_user_registration_path, notice: "Вы не вошли на сайт"
		end
  end

  def destroy
   if current_user
    @photo = Photo.find(params[:id])
    @photo.destroy 
     redirect_to :back
   end
  end

  private 

  def photo_params
  	params.require(:photo).permit(:name, :desc, :image, :user_id)
  end
end
