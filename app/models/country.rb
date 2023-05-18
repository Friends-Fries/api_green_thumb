class Country < ApplicationRecord
  # ASSOCIATIONS
  has_many :cities

  # VALIDATIONS
  validates :name, presence: true
end
