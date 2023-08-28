class User < ApplicationRecord
  # https://github.com/heartcombo/devise
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # INCLUDES
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # ASSOCIATIONS + DEVISE
  devise :database_authenticatable, :trackable, :registerable,
         :recoverable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: self

  belongs_to :city, optional: true

  # ENUMS
  enum role: {
    volunteer: 0,
    associate: 1,
    plot_manager: 2,
  }

  def jwt_payload
    super
  end
end
