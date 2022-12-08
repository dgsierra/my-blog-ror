# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Tom', photo: 'https://picsum.photos/seed/picsum/536/354', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://picsum.photos/536/354', bio: 'Teacher from Poland.')

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: second_user, title: 'My Second', text: 'I am so nervous')
third_post = Post.create(author: second_user, title: 'Third', text: 'I am not so nervous')
fourth_post = Post.create(author: first_user, title: 'Hola', text: 'This is fun')

Comment.create(post: first_post, author: second_user, text: 'Hi Tom!')
Comment.create(post: second_post, author: second_user, text: 'I have seen your post')
Comment.create(post: third_post, author: second_user, text: 'I have enjoyed this')
Comment.create(post: fourth_post, author: first_user, text: 'have you seen her')
Comment.create(post: first_post, author: second_user, text: 'No I have not')
Comment.create(post: first_post, author: second_user, text: 'this is the end')
