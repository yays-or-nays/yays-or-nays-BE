class DropTaggedTakesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :tagged_takes
  end
end
