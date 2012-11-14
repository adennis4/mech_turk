class ChangeDescriptionColumnInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :description, :quantity_question
  end
end
