class Relationship < ApplicationRecord
  belongs_to :follower, class_name: User.name
  belongs_to :followed, class_name: User.name

  validates :id_follower, presence: true
  validates :id_followed, presence: true
end
