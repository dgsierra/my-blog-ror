class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.order(created_at: :desc).limit(3)
    @comments = @post.comments
    @user = @post.author
  end
end
