class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    account_params = %i[name avatar]

    devise_parameter_sanitizer.permit(:sign_up, keys: account_params)
    devise_parameter_sanitizer.permit(:account_update, keys: account_params)
  end

  private

  # Response to user not authorized
  def user_not_authorized
    render json: { error: "You are not authorized to perform this action." }, status: :forbidden
  end
end
