class RemoveColumnFromNinja < ActiveRecord::Migration
  def change
    remove_column :ninjas, :string, :string
  end
end
