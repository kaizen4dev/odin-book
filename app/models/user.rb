class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_followings_as_follower, foreign_key: :follower_id, class_name: "UserFollowing"
  has_many :user_followings_as_followed, foreign_key: :following_id, class_name: "UserFollowing"

  has_many :following, through: :user_followings_as_follower
  has_many :followers, through: :user_followings_as_followed

  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, presence: true, uniqueness: true, length: { in: 3..20 }, format: {
    without: /\W/,
    message: "Name can't contain special characters"
  }
  validates :bio, length: { maximum: 500 }

  def feed
    Post.feed_for(self)
  end

  def to_param
    self.name
  end
end
