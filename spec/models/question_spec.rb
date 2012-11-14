require 'spec_helper'

describe Question do

  describe 'validations' do
    it 'requires a quantity question' do
      Question.new(:quantity_question => nil).should_not be_valid
    end

    it 'requires a quality question' do
      Question.new(:quality_question => nil).should_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to advertisement' do
      Question.new.should respond_to(:advertisement)
    end

    it 'has_many answers' do
      Question.new.should respond_to(:answers)
    end
  end
end
