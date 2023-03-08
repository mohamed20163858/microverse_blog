# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
first_post = Post.create(author: first_user, title: 'first post', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'second post', text: 'This is my second post')
third_post = Post.create(author: first_user, title: 'third post', text: 'This is my third post')
forth_post = Post.create(author: first_user, title: 'forth post', text: 'This is my forth post')
Comment.create(post: first_post, author: second_user, text: 'Hi Tom!')
Comment.create(post: second_post, author: second_user, text: 'Hi Tom!')
Comment.create(post: third_post, author: second_user, text: 'Hi Tom!')
Comment.create(post: forth_post, author: second_user, text: 'Hi Tom!')
Comment.create(post: first_post, author: first_user, text: 'Hi Lily!')
Comment.create(post: second_post, author: first_user, text: 'Hi Lily!')
