class CommentsController < ApplicationController
  def create
    c = Comment.create(
      user_id: params['user_id'],
      text: params['text'],
      guestname: params['guestname'],
      created_at: params['datetime']
    )

    redirect_to request.referrer
  end

  def delete
  end
end