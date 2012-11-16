require 'spec_helper'

describe UsersController do

  describe "GET 'welcome'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

end
