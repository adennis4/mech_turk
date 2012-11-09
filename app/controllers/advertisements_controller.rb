class AdvertisementsController < ApplicationController
  def show
    @advertisement = Advertisement.find(get_random_advertisement)
    @questions = @advertisement.questions
  end

  private

  def get_random_advertisement
    number_of_advertisements = Advertisement.all.count
    rand(number_of_advertisements) + 1
  end
end
