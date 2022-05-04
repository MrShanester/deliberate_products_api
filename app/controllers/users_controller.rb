class UsersController < ApplicationController

  def index
    users = User.all 
    render json: users.as_json
  end

  def create
    user = User.new(username: params[:username], email: params[:email], password: params[password])
    if user.save
      render json: user.as_json
    else
      render json: {error: user.error.full_messages}
    end
  end
end
