require 'spec_helper'

describe Answer do
  describe 'validations' do
    let(:valid_attributes) do
      {
       :quantity_response => "3",
       :quality_response => "Yes",
       :question_id => 1,
       :user_id => 1
      }
    end

    it 'requires a quantity response' do
      Answer.new(valid_attributes.merge(:quantity_response => nil)).should_not be_valid
    end

    it 'requires a quality response' do
      Answer.new(valid_attributes.merge(:quality_response => nil)).should_not be_valid
    end

    it 'requires a question_id' do
      Answer.new(valid_attributes.merge(:question_id => nil)).should_not be_valid
    end

    it 'requires a user_id' do
      Answer.new(valid_attributes.merge(:user_id => nil)).should_not be_valid
    end

    it 'has a max quantity response length of 10' do
      Answer.new(valid_attributes.merge(:quantity_response => 'This is too long')).should_not be_valid
    end

    it 'has a max quality response length of 40' do
      Answer.new(valid_attributes.merge(:quality_response => 'L'*41)).should_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to a question' do
      Answer.new.should respond_to(:question)
    end

    it 'belongs to a user' do
      Answer.new.should respond_to(:user)
    end
  end
end
