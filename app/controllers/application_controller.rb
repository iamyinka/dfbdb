class ApplicationController < ActionController::Base

  # before_action :dont_allow_user_self_registration
  #
  # private
  #
  # def dont_allow_user_self_registration
  #   if ['devise/registrations','devise_invitable/registrations'].include?(params[:controller]) && ['new','create'].include?(params[:action])
  #     redirect_to root_path
  #   end
  # end

end
