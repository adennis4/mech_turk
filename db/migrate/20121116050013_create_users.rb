class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :worker_id
      t.string :country

      t.timestamps
    end
  end
end
