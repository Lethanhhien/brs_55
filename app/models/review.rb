class Review < ApplicationRecord

    belongs_to :user
    belongs_to :book
    validates :title, presence: true, length: {maximum: 100}
    validates :content, presence: true

    has_many :likes
    has_many :comments
end
