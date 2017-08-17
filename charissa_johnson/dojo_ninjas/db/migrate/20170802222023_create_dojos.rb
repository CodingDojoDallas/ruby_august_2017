class CreateDojos < ActiveRecord::Migration
  def change
    create_table :dojos do |t|
      t.string :first_name
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
