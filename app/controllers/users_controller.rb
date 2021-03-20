class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @comments = current_user.comments
  end
end
