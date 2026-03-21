class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commantable
  has_many :likes, as: :likeable
end
