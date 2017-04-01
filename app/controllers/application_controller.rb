class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :average
  
  private
  
	def logged_in_user
	 unless logged_in?
	  flash[:danger] = 'Please log in'
	  redirect_to login_url
	 end
	end

	def average
    @averate = @photo.comments.sum(:rate) / @photo.comments(:rate).size.to_f
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  protect_from_forgery with: :exception
end
