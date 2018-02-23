class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
