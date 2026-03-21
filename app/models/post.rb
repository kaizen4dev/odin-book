class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commantable
  has_many :likes, as: :likeable

  scope :feed_for, ->(user) { where(user_id: user.following.ids) }
end
