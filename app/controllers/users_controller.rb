class UsersController < ApplicationController
  
  def new
    @advertisements = Advertisement.all
    @user = User.new
  end

  def create
    User.create(:worker_id => params[:user][:worker_id],
                :country => params[:user][:country])
    redirect_to advertisements_path
  end
end
