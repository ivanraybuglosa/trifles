class Word < ApplicationRecord
  belongs_to :category
  has_many :lessons, through: :answer
  
  has_many :choices, dependent: :destroy
  accepts_nested_attributes_for :choices
  
  validates :content,presence: true, length: { maximum: 20 }
  validates :category_id, presence: true
  validate :check_choice

  def correct_choice
    choices.find_by(correct: true)
  end

  private

  def check_choice
    choice = choices.collect { |c| c.correct || nil }.compact
      if choice.size == 0 
        errors.add(:choices_correct, "can't be blank")
      elsif choice.size > 1
        errors.add(:choices_correct, "can have only one choice")
      end
  end
end
