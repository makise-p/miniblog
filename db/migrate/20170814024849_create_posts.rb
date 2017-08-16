class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      add_column :posts, comments_count, :integer, null: false, default: 0

      t.timestamps
    end
  end
end
