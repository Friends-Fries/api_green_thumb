class ApplicationController < ActionController::API
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  # Response to user not authorized
  def user_not_authorized
    render json: { error: "You are not authorized to perform this action." }, status: :forbidden
  end
end
