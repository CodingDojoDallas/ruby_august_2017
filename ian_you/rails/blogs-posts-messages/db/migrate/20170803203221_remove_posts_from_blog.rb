class RemovePostsFromBlog < ActiveRecord::Migration
  def change
    remove_reference :blogs, :posts, index: true, foreign_key: true
  end
end
