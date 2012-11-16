require 'spec_helper'

describe AnswersController do

  describe "GET 'create'" do
    it "returns http success" do
      User.create(:country => "US")
      get 'create'
      response.should be_success
    end
  end

end
