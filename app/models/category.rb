class Category < ApplicationRecord
  has_many :words
  has_many :lessons, dependent: :destroy
  has_many :users, through: :lessons
  has_many :answers, through: :lessons

  validates :title, presence: true, length: { maximum: 140 }
  validates :description, presence: true, length: { maximum: 250 }

  def get_lesson(current_user)
    lessons.find_by(user: current_user)
  end

end
