class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :home_city, :home_state, :home_country, :photo_url, :user_name, :email, :password, :password_confirmation)
    end
<<<<<<< HEAD
  end
=======
end
>>>>>>> 210a6dfb2afe1ab224bf1a7b156e8a6cad0a50c0
  
end
