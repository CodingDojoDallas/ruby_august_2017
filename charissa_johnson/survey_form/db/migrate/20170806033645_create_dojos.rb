class CreateDojos < ActiveRecord::Migration
  def change
    create_table :dojos do |t|
      t.string :name
      t.string :dojo
      t.string :language
      t.text :comment

      t.timestamps null: false
    end
  end
end
