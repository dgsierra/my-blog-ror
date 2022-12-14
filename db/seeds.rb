# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Tom', photo: 'https://picsum.photos/seed/picsum/536/354', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://picsum.photos/536/350', bio: 'Teacher from Poland.')
thirth_user = User.create(name: 'Daniel', photo: 'https://picsum.photos/536/358', bio: 'Cat lady.')
fourth_user = User.create(name: 'Pancho', photo: 'https://picsum.photos/536/351', bio: 'Alameda CEO')
fifth_user = User.create(name: 'Sam', photo: 'https://picsum.photos/536/352', bio: 'Crypto entusiast, 1 bitcoin at the time.')
seventh_user = User.create(name: 'John Ray', photo: 'https://picsum.photos/536/355', bio: 'I love dogs.')
eigth_user = User.create(name: 'Barney', photo: 'https://picsum.photos/536/359', bio: 'Banker from US.')

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: second_user, title: 'My Second', text: 'I am so nervous')
third_post = Post.create(author: second_user, title: 'Third', text: 'I am not so nervous')
fourth_post = Post.create(author: first_user, title: 'Hola', text: 'This is fun')
fifth_post = Post.create(author: first_user, title: 'My 5 Post', text: 'This is fun')
sixth_post = Post.create(author: first_user, title: 'My 6 posts', text: 'This is fun')
seventh_post = Post.create(author: first_user, title: 'My 7 posts', text: 'This is fun')
eigth_post = Post.create(author: first_user, title: 'My 8 posts', text: 'This is fun')
nineth_post = Post.create(author: first_user, title: 'My 9 posts', text: 'This is fun')
teenth_post = Post.create(author: first_user, title: 'My 10 post', text: 'This is fun')
eleventh_post = Post.create(author: first_user, title: 'My 11 posts', text: 'This is fun')
twelve_post = Post.create(author: first_user, title: 'My 12 Posts', text: 'This is fun')

Comment.create(post: first_post, author: seventh_user, text: 'Hi Guys!')
Comment.create(post: second_post, author: eigth_user, text: 'I have a Burrito in my hands')
Comment.create(post: eigth_post, author: second_user, text: 'I have enjoyed Testing')
Comment.create(post: fourth_post, author: first_user, text: 'have you seen her')
Comment.create(post: first_post, author: second_user, text: 'No I have not')
Comment.create(post: first_post, author: fifth_user, text: 'this is the end')
Comment.create(post: first_post, author: second_user, text: 'Hi Tom!')
Comment.create(post: eigth_post, author: thirth_user, text: 'I have seen your post')
Comment.create(post: third_post, author: fourth_user, text: 'I have enjoyed this')
Comment.create(post: fourth_post, author: first_user, text: 'have you seen her')
Comment.create(post: first_post, author: fifth_user, text: 'No I have not')
Comment.create(post: first_post, author: fourth_user, text: 'This is a cool comment')
Comment.create(post: eigth_post, author: second_user, text: 'I have a FTX wallet')
Comment.create(post: second_post, author: thirth_user, text: 'Who is the king?')
Comment.create(post: third_post, author: second_user, text: 'I have enjoyed this')
Comment.create(post: fourth_post, author: thirth_user, text: 'have you seen her')
Comment.create(post: first_post, author: second_user, text: 'Im the CEO')
Comment.create(post: teenth_post, author: fourth_user, text: 'this is the end')
