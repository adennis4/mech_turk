class UsersController < ApplicationController
  expose :user

  def create
    if user.save
      redirect_to advertisements_path
    else
      render :new
    end
  end
end
