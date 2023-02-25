require 'rails_helper'
RSpec.describe User, type: :model do
  # tests go here
  subject { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }
  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'PostsCounter must be an integer greater than or equal to zero' do
    subject.posts_counter = nil
    expect(subject).to_not be_valid
  end
  it 'PostsCounter must be zero when intialized' do
    expect(subject.posts_counter).to equal(0)
  end
end
