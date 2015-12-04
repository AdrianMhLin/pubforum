class HomeController < ApplicationController
  def index
    render :index
  end

  def test_profile
    @users = User.all
    @comments = Comment.all
    render :test_profile
  end
end