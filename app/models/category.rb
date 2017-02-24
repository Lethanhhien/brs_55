class Category < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}, uniqueness: true

  has_many :books, dependent: :destroy
end
