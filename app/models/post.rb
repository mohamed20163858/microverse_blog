class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  after_save :update_posts_counter
  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  after_initialize :init

  def update_posts_counter
    author.increment!(:posts_counter)
  end

  def recent_five_comments
    comments.order(created_at: :desc).first(5)
  end

  def init
    self.comments_counter = 0 if comments_counter.blank?
    self.likes_counter = 0 if likes_counter.blank?
  end
end
