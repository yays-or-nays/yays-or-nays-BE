class AddReferencesToHotTakes < ActiveRecord::Migration[5.2]
  def change
    add_reference :hot_takes, :tag, foreign_key: true
  end
end
