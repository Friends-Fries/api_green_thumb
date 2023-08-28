# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  include RackSessionsFix

  respond_to :json

  private

  # Overriding from devise
  def respond_with(current_user, _opts = {})
    puts request.body.to_json
    p UserSerializer.new(current_user).serializable_hash[:data][:attributes]
    p UserSerializer.new(current_user).serializable_hash
    if resource.persisted?
      render json: {
        status: { code: 200, message: "Signed up successfully." },
        data: UserSerializer.new(current_user).serializable_hash[:data][:attributes],
      }
    else
      render json: {
               status: { message: "User couldn't be created successfully. #{current_user.errors.full_messages.to_sentence}" },
             }, status: :unprocessable_entity
    end
  end
end
