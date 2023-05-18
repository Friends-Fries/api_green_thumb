class City < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :country
  has_many :users

  # VALIDATIONS
  validates :uf, :name, presence: true
end
