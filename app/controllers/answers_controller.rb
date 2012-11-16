class AnswersController < ApplicationController
  def create
    redirect_to "/" and return if User.last.answers.count > 2
    Answer.create(
      :quality_response => params[:answer][:quality_response],
      :quantity_response => params[:answer][:quantity_response],
      :question_id => params[:answer][:question_id],
      :user_id => User.last.id
      )
    redirect_to "/advertisements/#{get_random_advertisement}"
  end

  def get_random_advertisement
    number_of_advertisements = Advertisement.all.count
    rand(number_of_advertisements) + 1
  end
end
