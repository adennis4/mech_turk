require 'spec_helper'

describe Advertisement do

  describe 'validations' do
    let(:valid_params) do
      {:name => 'Test', :description => 'test', :image_url => "http://google.com"}
    end

    it 'requires a name' do
      Advertisement.new(valid_params.merge(:name => nil)).should_not be_valid
    end

    it 'requires a description' do
      Advertisement.new(valid_params.merge(:description => nil)).should_not be_valid
    end

    it 'requires an image_url' do
      Advertisement.new(valid_params.merge(:image_url => nil)).should_not be_valid
    end
  end

  describe 'associations' do
    it 'has many questions' do
      Advertisement.new.should respond_to(:question)
    end
  end
end
