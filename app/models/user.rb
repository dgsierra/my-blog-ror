class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes
  validates :name, presence: true
  validates :bio, presence: true, length: { maximum: 500 }

  after_create do
    update(posts_counter: 0)
  end

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
