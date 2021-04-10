class CreateTaggedTakes < ActiveRecord::Migration[5.2]
  def change
    create_table :tagged_takes do |t|
      t.references :hot_take, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
