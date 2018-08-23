class Choice < ApplicationRecord
  belongs_to :word

  validates :content, presence: true, length: { maximum: 20 }

end
