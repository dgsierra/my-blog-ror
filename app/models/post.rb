class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id
  has_many :likes
  has_many :comments
  validates :title, presence: true, length: { maximum: 100 }
end
