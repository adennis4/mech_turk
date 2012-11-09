require 'spec_helper'

describe Advertisement do

  describe 'validations' do
    it 'requires a name' do
      Advertisement.new(:name => nil, :description => "a").should_not be_valid
    end

    it 'requires a description' do
      Advertisement.new(:name => 'a', :description => nil).should_not be_valid
    end
  end

  describe 'associations' do
    it 'has many questions' do
      Advertisement.new.should respond_to(:questions)
    end
  end

end
