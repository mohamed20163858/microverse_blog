require 'rails_helper'
RSpec.describe Post, type: :model do
  # tests go here
  let(:user) do
    User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  end

  let(:post) do
    Post.create(author: user, title: 'first post', text: 'This is my first post')
  end
  it 'title should be present' do
    post.title = nil
    expect(post).to_not be_valid
  end
  it 'Title must not exceed 250 characters.' do
    post.title = 'a' * 251
    expect(post).to_not be_valid
  end
  it 'CommentsCounter must be zero when intialized' do
    expect(post.comments_counter).to equal(0)
  end
  it 'LikesCounter must be zero when intialized' do
    expect(post.likes_counter).to equal(0)
  end
  it 'CommentsCounter must be an integer greater than or equal to zero' do
    post.comments_counter = nil
    expect(post).to_not be_valid
  end
  it 'LikesCounter must be an integer greater than or equal to zero' do
    post.likes_counter = nil
    expect(post).to_not be_valid
  end
end
