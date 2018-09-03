class Category < ApplicationRecord
  has_many :words
  has_many :lessons, dependent: :destroy

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 100 }

  def get_lesson(current_user)
    lessons.find_by(user: current_user)
  end

end
