class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  has_many :comments, as: :commentable
  has_many :likes, as: :likeable

  validates :body, presence: true, length: { maximum: 1000 }

  def liked_by?(user)
    !self.likes.find_by(user: user).nil?
  end
end
