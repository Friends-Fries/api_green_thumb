# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json
end

# It a 'post' to create an user instance
