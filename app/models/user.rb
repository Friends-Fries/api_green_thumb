class User < ApplicationRecord
  # https://github.com/heartcombo/devise
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # ASSOCIATIONS + DEVISE
  devise :database_authenticatable, :trackable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  belongs_to :city

  # VALIDATIONS
  validates :email, presence: true
end
