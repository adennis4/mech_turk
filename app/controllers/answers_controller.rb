class AnswersController < ApplicationController
  def create
    Answer.create(:quality_response => params[:answer][:quality_response],
                  :quantity_response => params[:answer][:quantity_response],
                  :question_id => params[:answer][:question_id])
    redirect_to "/advertisements/#{get_random_advertisement}"
  end

  def get_random_advertisement
    number_of_advertisements = Advertisement.all.count
    rand(number_of_advertisements) + 1
  end
end
