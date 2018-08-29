class Lesson < ApplicationRecord
  has_many :user
  has_many :category
  has_many :answers
  has_many :words, through: :answers

  validates :user_id, presence: true
  validates :category_id, presence: true

  def next_word
    category = Category.find_by(id: category_id)
    (category.words - words).first
  end
end
