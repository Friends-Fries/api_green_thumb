class City < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :country
  has_many :users

  # VALIDATES
  validates :uf, :name, presence: true
end
