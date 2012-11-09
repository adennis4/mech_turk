class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :desciption
      t.integer :advertisement_id

      t.timestamps
    end
  end
end
