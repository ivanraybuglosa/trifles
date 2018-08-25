class Category < ApplicationRecord
  has_many :words
  has_many :lessons, dependent: :destroy

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 100 }
end
