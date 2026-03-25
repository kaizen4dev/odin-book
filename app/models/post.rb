class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commantable
  has_many :likes, as: :likeable

  validates :title, presence: true, length: { in: 5..100 }
  validates :body, presence: true, length: { maximum: 10000 }

  scope :feed_for, ->(user) { where(user_id: user.following.ids.push(user.id)).order(created_at: :desc) }

  def liked_by?(user)
    self.likes.find_by(user: user).nil?
  end
end
