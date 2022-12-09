require 'rails_helper'

RSpec.describe Post, type: :model do
  context "validation of the Post model" do

    before(:all) do
      @user = User.new(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
      @post = Post.new(title: 'My first post', text: 'This is my first post.', author: @user, comments_counter: 4,
        likes_counter: 6)
    end

    it "is valid with valid attributes" do
      expect(@post).to be_valid
      expect(@post.errors).to be_empty
      expect(@post.title).to eq("My first post")
      expect(@post.text).to eq("This is my first post.")
    end

    it "validates the presence of the title" do
      @post.title = nil
      expect(@post).not_to be_valid
    end

    it "validates the presence of the text" do
      @post.text = nil
      expect(@post).not_to be_valid
    end

    it "validates the presence of the author" do
      expect(@post.author).to be_valid
      expect(@post.author).to be(@user)
    end

end
end
