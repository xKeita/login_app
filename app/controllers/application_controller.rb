class ApplicationController < ActionController::Base

def after_sign_in_path_for(resource)
  home_top_path
end 

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email])
    devise_parameter_sanitizer.permi(:sign_in, keys:[:email])
  end

end