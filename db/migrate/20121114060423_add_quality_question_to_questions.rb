class AddQualityQuestionToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :quality_question, :string
  end
end
