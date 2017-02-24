class Like < ApplicationRecord
  belongs_to :user, class_name: User.name
  belongs_to :review, class_name: Review.name

  validates :id_user, presence: true
  validates :id_review, presence: true
end
