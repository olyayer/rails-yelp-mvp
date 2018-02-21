class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

  def average_rating
    sum = reviews.sum(:rating)
    count = reviews.count.to_f
    return 0 if count == 0
    (sum / count).round
  end

end

