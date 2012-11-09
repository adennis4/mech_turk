require 'spec_helper'

describe Question do

  describe 'validations' do
    it 'requires a description' do
      Question.new(:description => nil).should_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to advertisement' do
      Question.new.should respond_to(:advertisement)
    end
  end
end
