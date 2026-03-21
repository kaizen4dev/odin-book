class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commantable, polymorphic: true

  has_many :comments, as: :commantable
end
