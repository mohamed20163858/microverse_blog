class ApplicationController < ActionController::Base
  # def current_user
  #   User.first
  # end
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name bio posts_counter])
  end
end
