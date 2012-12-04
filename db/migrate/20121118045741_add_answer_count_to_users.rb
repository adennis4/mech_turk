class AddAnswerCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :answer_count, :integer
  end
end
