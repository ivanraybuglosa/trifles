class Category < ApplicationRecord
  has_many :words
  has_many :lessons, dependent: :destroy

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 100 }

  def get_lesson(current_user) 
    lessons.find_by(user_id: current_user)
  end

  def check_lesson(current_user)
    lesson = lessons.find_by(user_id: current_user)
      if lesson.answers.size != words.size
        words - lesson.answers
      end
  end
end
