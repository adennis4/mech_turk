require 'spec_helper'

describe User do
  describe 'validations' do
    it 'requires a country' do
      User.new(:country => nil, :worker_id => 31314).should_not be_valid
    end
  end

  describe 'assocations' do
    it 'has many answers' do
      User.new.should respond_to(:answers)
    end
  end
end
