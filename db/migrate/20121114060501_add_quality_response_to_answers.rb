class AddQualityResponseToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :quality_response, :string
  end
end
