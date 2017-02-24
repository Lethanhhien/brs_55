class Rate < ApplicationRecord
  belongs_to :user, class_name: User.name
  belongs_to :book, class_name: Book.name

  validates :id_user, presence: true
  validates :id_book, presence: true
end
