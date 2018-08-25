class Lesson < ApplicationRecord
  has_many :user
  has_many :category
  has_many :answers
  has_many :words, through: :answers

  validates :user_id, presence: true
  validates :category_id, presence: true
end
