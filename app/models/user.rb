class User < ApplicationRecord
  # https://github.com/heartcombo/devise
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # ASSOCIATIONS + DEVISE
  devise :database_authenticatable, :trackable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :city

  # VALIDATIONS
  validates :email, presence: true

  # ENUMS
  enum role: {
    volunteer: 0,
    associate: 1,
    plot_manager: 2,
  }
end
