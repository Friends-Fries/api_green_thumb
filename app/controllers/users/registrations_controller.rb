# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
end

# Requests from the client
# It will be mostly POST requests to create new users in our APP
