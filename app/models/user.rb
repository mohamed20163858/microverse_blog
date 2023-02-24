class User < ApplicationRecord
  has_many :comments, foreign_key: :author_id
  has_many :posts, foreign_key: :author_id 
  has_many :likes, foreign_key: :author_id
   def recent_three_posts
      posts.order(created_at: :desc).first(3)
   end 
end
