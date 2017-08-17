class RemoveTable < ActiveRecord::Migration
  def change
    drop_table :ninjas
  end
end
