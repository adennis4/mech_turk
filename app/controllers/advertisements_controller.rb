class AdvertisementsController < ApplicationController
  def show
    @advertisement = Advertisement.find(params[:id])
    # return if Advertisement.all.count == 0    
    # @advertisement = Advertisement.find(get_random_advertisement)
    @answer = Answer.new
  end

  private

  def get_random_advertisement
    number_of_advertisements = Advertisement.all.count
    rand(number_of_advertisements) + 1
  end
end
