class ChangeQuestionTableDescriptionField < ActiveRecord::Migration
  def change
    rename_column :questions, :desciption, :description    
  end
end
