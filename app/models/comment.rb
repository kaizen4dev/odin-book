class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commantable, polymorphic: true

  has_many :comments, as: :commantable
  has_many :likes, as: :likeable

  validates :body, presence: true, length: { maximum: 1000 }
end
