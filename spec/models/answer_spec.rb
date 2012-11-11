require 'spec_helper'

describe Answer do
  describe 'validations' do
    it 'requires a response' do
      Answer.new(:response => nil, :question_id => 1).should_not be_valid
    end

    it 'requires a question_id' do
      Answer.new(:response => "Yes", :question_id => nil).should_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to question' do
      Answer.new.should respond_to(:question)
    end
  end

end
