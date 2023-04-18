# https://github.com/waiting-for-dev/devise-jwt

class JwtDenylist < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Denylist

  self.table_name = "jwt_denylist"
end
