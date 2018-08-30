class Choice < ApplicationRecord
  belongs_to :word
  has_many :lessons, through: :answer

  validates :content, presence: true, length: { maximum: 20 }

end
