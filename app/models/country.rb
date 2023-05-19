class Country < ApplicationRecord
  # ASSOCIATIONS
  has_many :cities, dependent: :destroy

  # VALIDATIONS
  validates :name, presence: true
end
