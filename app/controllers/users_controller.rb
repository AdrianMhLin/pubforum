class UsersController < ApplicationController
  def create
    u = User.create(
      email: params['email'].downcase,
      password: params['password'],
      image_url: params['image_url']
    )

    redirect_to '/'
  end

  def new
    render :signup
  end

  def delete
  end
end