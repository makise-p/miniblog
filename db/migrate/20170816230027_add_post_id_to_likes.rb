class AddPostIdToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :post, :integer
  end
end
