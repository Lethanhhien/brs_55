class User < ApplicationRecord
  before_save {email.downcase!}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password
  validates :name,  presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 6}, on: :create
  validates :password, length: {minimum: 6}, allow_blank: true, on: :update

  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :liking, through: :active_likes, source: :review
  has_many :rating, through: :active_rates, source: :book
  has_many :reviews, dependent: :destroy
  has_many :requests
  has_many :comments
end
