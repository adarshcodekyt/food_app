class ApplicationController < ActionController::Base
protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?	
 def check_is_admin
 	
 	if current_user.is_admin
return true
else
	redirect_to new_user_session_path,notice:"page looking for sign_in"
end
end

 private

 
  def after_sign_out_path_for(resource_or_scope)
      new_user_session_path
end


def after_sign_in_path_for(resource_or_scope)
     categories_path
	end

 protected

def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:phone])
   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name,:last_name,:phone]) 
end



end
