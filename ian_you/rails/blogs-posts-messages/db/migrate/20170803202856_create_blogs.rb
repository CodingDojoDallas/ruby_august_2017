class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :description
      t.references :posts, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
