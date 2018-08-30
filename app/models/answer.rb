class Answer < ApplicationRecord
  belongs_to :word
  belongs_to :lesson
  belongs_to :choice

  validates :word_id, presence: true
  validates :lesson_id, presence: true
  validates :choice_id, presence: true

  def correct_choice
    choices.find_by(correct: true)
  end
end
