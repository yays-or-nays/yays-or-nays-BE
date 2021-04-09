class CreateHotTakes < ActiveRecord::Migration[5.2]
  def change
    create_table :hot_takes do |t|
      t.string :question
      t.string :picture
      t.integer :yes_vote, default: 0
      t.integer :no_vote, default: 0

      t.timestamps
    end
  end
end
