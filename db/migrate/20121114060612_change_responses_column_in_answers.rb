class ChangeResponsesColumnInAnswers < ActiveRecord::Migration
  def change
    rename_column :answers, :response, :quantity_response
  end
end
