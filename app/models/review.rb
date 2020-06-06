class Review < ApplicationRecord
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :content, presence: true
  validates :email, presence: true
end
