class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commantable
  has_many :likes, as: :likeable

  valibates :title, presence: true, length: {in: 5..100}
  validates :body, presence: true, length: {maximum: 10000}

  scope :feed_for, ->(user) { where(user_id: user.following.ids) }
end
