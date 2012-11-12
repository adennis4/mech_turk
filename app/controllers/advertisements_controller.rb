class AdvertisementsController < ApplicationController
  def show
    @advertisement = Advertisement.find(params[:id])
    @answer = Answer.new
  end
end
