class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :excerpt
      t.string :slug
      t.string :category
      t.string :category_color
      t.string :author
      t.string :reading_time
      t.string :cover_image
      t.boolean :featured
      t.datetime :published_at

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
