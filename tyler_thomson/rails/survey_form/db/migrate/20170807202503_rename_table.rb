class RenameTable < ActiveRecord::Migration
  def change
    rename_table :users, :surveys
  end
end
