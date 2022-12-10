class UsersController < ApplicationController
  def index
    @users = User.all
    # debugger
  end
end
