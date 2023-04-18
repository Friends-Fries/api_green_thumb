class JwtBlacklist < ApplicationRecord
  # https://github.com/waiting-for-dev/devise-jwt
  
  include Devise::JWT::RevocationStrategies::Denylist

  self.table_name = 'jwt_blacklists'
end
