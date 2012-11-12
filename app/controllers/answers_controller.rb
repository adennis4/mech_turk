class AnswersController < ApplicationController
  def create
    Answer.create(:response => params[:answer][:response], :question_id => 1)
    redirect_to "/advertisements/#{get_random_advertisement}"
  end

  def get_random_advertisement
    number_of_advertisements = Advertisement.all.count
    rand(number_of_advertisements) + 1
  end
end
