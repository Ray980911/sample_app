class Relationship < ApplicationRecord
  # どちらもUserモデルに対して関連付け行い、それぞれ名前をつけている
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
