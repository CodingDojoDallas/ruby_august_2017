class RemoveColumnsFromNinjas < ActiveRecord::Migration
  def change
    remove_column :ninjas, :dojo_id
    remove_column :ninjas, :integer
    remove_column :ninjas, :string
  end
end
